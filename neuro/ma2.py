import numpy as np
from mlagents.tf_utils import tf

tf.compat.v1.logging.set_verbosity(tf.compat.v1.logging.ERROR)

from utils import load_pb, preprocess, process_image, get_distance
from logic import Grounder
from collections import deque
import time
import cv2

def choose_action_probability(predictions_exp):
    return np.random.choice(list(range(3)), 1, p=predictions_exp)[0]

goal_visible = Grounder().goal_visible # Func
test=False

class RollingChecks:
    @staticmethod
    def visible(state, obj_id):
        if any(i[1]in['goal','goal1'] for i in state['obj']):
            return True, f"Success: Object {obj_id} now visible"
        return False, f"Object {obj_id} still not visible"

    @staticmethod
    def time(state, limit=250):
        t = state["micro_step"]
        if t >= limit:
            return True, f"Failure: Time out, timestep {t}/{limit}"
        return False, f"Timestep {t}/{limit}"


class Action:
    def __init__(self, env, ct, state, step_results, action):
        self.env = env
        self.ct = ct
        self.state = state
        self.step_results = step_results
        if isinstance(action['initiate'][0],str):
            self.action = action['initiate'][0]
            self.action_args = None
        else:
            self.action = action["initiate"][0][0]
            self.action_args = action["initiate"][0][1]
        self.checks = action["check"]
        model_path = f"macro_actions/v2/{self.action}"
        self.graph = load_pb(model_path)
        self.reward = 0
        self.micro_step = 0
        self.mode = None

    def macro_stats(self, checks=None):
        success = self.state['reward'] > self.reward
        res = {
            "success": success,
            "micro_step": self.micro_step,
            "reward": self.state['reward'],
            "checks": checks,
        }
        return res
    def get_action(self, vector_obs):
        with tf.compat.v1.Session(graph=self.graph) as sess:

            output_node = self.graph.get_tensor_by_name("action:0")
            input_node = self.graph.get_tensor_by_name("vector_observation:0")
            action_masks = self.graph.get_tensor_by_name("action_masks:0")

            mask_constant = np.array([1, 1, 1, 1, 1, 1]).reshape(1, -1)

            if isinstance(vector_obs, tuple):
                visual_node = self.graph.get_tensor_by_name("visual_observation_0:0")
                visual_obs, vector_obs = vector_obs 
                if visual_obs.shape[0]!=84:
                    visual_obs = cv2.cv2.resize(visual_obs, dsize=(84, 84), interpolation=cv2.INTER_CUBIC)
                vector_obs = vector_obs.reshape(1, -1)
                visual_obs = visual_obs.reshape(1, 84, 84, 1)

                feed_dict = {input_node: vector_obs,
                            action_masks: mask_constant,
                            visual_node: visual_obs}

            else:
                vector_obs = vector_obs.reshape(1, -1)
                feed_dict = {input_node: vector_obs, action_masks: mask_constant}

            prediction = sess.run(
                output_node,
                feed_dict=feed_dict,
            )[0]

            prediction = np.exp(prediction)

            action = [choose_action_probability(prediction[:3]), choose_action_probability(prediction[3:])]
        return np.array(action).reshape((1, 2))

    def process_state(self, state, args):
        pass
    def checks_clean(self):
        if self.state['done']:
            return False, self.macro_stats(None)
        for check in self.checks:
            if check[1] != "-":
                check_bool, check_stats = getattr(RollingChecks, check[0])(
                    self.state, check[1]
                )
            else:
                check_bool, check_stats = getattr(RollingChecks, check[0])(self.state)

            if check_bool:
                return False, self.macro_stats(check_stats)
        return True, self.macro_stats("GREEN")
    def run(self, pass_mark):
        go = True
        while go:
            vector_obs = self.state_parser(self.state, self.action_args)
            action = self.get_action(vector_obs)
            self.step_results = self.env.step(action)
            self.state = preprocess(self.ct, self.step_results, self.micro_step, self.state['reward'], self.action)
            self.state['micro_step'] = self.micro_step
            self.micro_step += 1
            go, stats = self.checks_clean()
            self.reward = self.step_results[1]
            if self.state['reward'] > pass_mark:
                break
        return self.step_results, self.state, stats, self.micro_step

class Interact(Action):
    def __init__(self, env, ct, state, step_results, action):
        super().__init__(
            env=env, ct=ct, state=state, step_results=step_results, action=action
        )
        self.config = {
            "mode":"box",
            "box": "green",
            "mask": None
        }
        self.with_up = False


    @staticmethod
    def process_state(state, x):
        """Go to object x. x is an id."""
        x = x[0]
        res = np.zeros(6)
        res[:2] = state['velocity']
        obj = state['obj']
        try:
            res[2:] = next(i[0] for i in obj if i[3]==x)
        except StopIteration:
            res[2:] = [0,0,0,0]

        return res

class Explore(Action):
    def __init__(self, env, ct, state, step_results, action):
        super().__init__(
            env=env, ct=ct, state=state, step_results=step_results, action=action
        )

        self.config = {
            "mode":"box",
            "box": "wall",
            "mask": None
        }
        self.with_up = False

    @staticmethod
    def process_state(state, x):
        """Go behind object x. x is an id. x comes in as "x,y"""
        x = x[0]
        res = np.zeros(6)
        res[:2] = state['velocity']
        try:
            res[2:] = next(i[0] for i in state['obj'] if i[3]==x)
        except StopIteration:
            res[2:] = [0,0,0,0]
        return res

class AvoidRed(Action):
    def __init__(self, env, ct, state, step_results, action):
        super().__init__(
            env=env, ct=ct, state=state, step_results=step_results, action=action
        )

        self.config = {
            "mode":"dual",
            "box": "green",
            "mask": "red"
        }
        self.with_up = False


    @staticmethod
    def process_state(state, x):
        """Go to object x while avoiding red. x is an id."""
        res = np.zeros(6)
        res[:2] = state['velocity']
        img, _ = process_image(state['visual_obs'], **self.config)

        try:
            res[2:] = next(i[0] for i in state['obj'] if i[1]=='goal')
        except StopIteration:

            if any(i[1]=="goal1" for i in state['obj']):
                    res[2:] = state['obj'][0][0]
            else:
                res[2:] = [0,0,0,0]

        return img, res

class Rotate(Action):
    def __init__(self, env, ct, state, step_results, action):
        super().__init__(
            env=env, ct=ct, state=state, step_results=step_results, action=action
        )


    @staticmethod
    def process_state(state):
        """Rotate to first visible object"""
        tracker_onset = None
        tracker_offset = 0
        for c in range(50):
            self.step_results = self.env.step([[0, 1]])
            self.state = preprocess(self.ct, self.step_results, self.micro_step, self.reward)
            self.state['micro_step'] = self.micro_step
            self.micro_step += 1
            self.reward = self.step_results[1]
            # Rotate
            if self.state['obj']: #0 is placeholder macro step, has no effect
                break # and run a few more rotations to point to it
        for _ in range(3): # add extra 3 rotations to be looking straight at object
            self.step_results = self.env.step([[0, 1]])
            self.reward = self.step_results[1]
            self.state = preprocess(self.ct, self.step_results, self.micro_step, self.reward)
            self.state['micro_step'] = self.micro_step
            self.micro_step += 1
        return self.step_results, self.state, self.macro_stats(
            "Object visible, rotating to it"), self.micro_step


