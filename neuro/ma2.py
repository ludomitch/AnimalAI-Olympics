import numpy as np
from mlagents.tf_utils import tf

tf.compat.v1.logging.set_verbosity(tf.compat.v1.logging.ERROR)

from utils import load_pb, preprocess, process_image#, get_distance
from logic import Grounder
import checks as ck
# from collections import deque
# import time
import cv2

def choose_action_probability(predictions_exp):
    return np.random.choice(list(range(3)), 1, p=predictions_exp)[0]

goal_visible = Grounder().goal_visible # Func
test=False


class Action:
    def __init__(self, env, ct, state, step_results, args, checks):
        self.env = env
        self.ct = ct
        self.state = state
        self.step_results = step_results
        self.args = args
        self.checks = checks
        self.reward = 0
        self.micro_step = 0
        self.config = {} # Default behaviour
        self.with_up = None
        self.graph = None
        self.always_visible = None
        self.rcs = None

    @property
    def name(self):
        return self.__class__.__name__.lower()

    def load_graph(self):
        model_path = f"macro_actions/v3/{self.name}.pb"
        self.graph = load_pb(model_path)

    def process_state(self):
        obs_size = 4 if self.config['mode'] in ['dual', 'box'] else 0
        if self.with_up:
            vel_size = 3
            vel = self.state['velocity']

        else:
            vel_size = 2
            vel = [self.state['velocity'][0], self.state['velocity'][2]]

        res = np.zeros(obs_size+vel_size)
        res[:vel_size] = vel

        if not self.config['mode'] == "mask":
            obj = self.config['box']
            try: # Look for id first, then obj type
                res[vel_size:] = next(i[0] for i in self.state['obj'] if i[3]==obj[0])
            except StopIteration:
                if not self.always_visible:
                    try:
                        res[vel_size:] = next(i[0] for i in self.state['obj'] if i[1]==obj[1])
                    except StopIteration:
                        pass

        if self.config['mode'] in ['dual', 'mask']:
            masked_img = process_image(self.state['visual_obs'], **self.config)
            return masked_img, res
        return res


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

    def checks_clean(self):
        if self.state['done']:
            return False, self.macro_stats(None)
        for check in self.checks:
            check.state = self.state
            check_bool, check_info = check.run()
            if check_bool:
                return False, self.macro_stats(check_info)
        return True, self.macro_stats("GREEN")

    def identify_action_args(self):
        res = []
        for arg in self.args:
            if arg == 42:
                typ = "goal"
            else:
                try:
                    typ = next(i[1] for i in self.state['obj'] if i[3]==arg)
                except StopIteration:
                    typ = None
            res.append([arg, typ]) # ID and object type
        
        for k,v in self.config.items():
            if isinstance(v, int):
                if k=="mask":
                    self.config[k] = res[v][1]
                else: #box
                    self.config[k] = res[v]

    def instantiate_checks(self):
        self.checks = [getattr(ck, i[0].title())(self.state, i[1]) for i in self.checks]

    def run(self, pass_mark):
        self.identify_action_args()
        self.load_graph()
        self.instantiate_checks()

        go = True
        while go:
            obs = self.process_state()
            action = self.get_action(obs)
            self.step_results = self.env.step(action)
            self.state = preprocess(self.ct, self.step_results, self.micro_step,
                self.state['reward'], self.name)
            self.state['micro_step'] = self.micro_step
            self.micro_step += 1
            go, stats = self.checks_clean()
            self.reward = self.step_results[1]
            if self.state['reward'] > pass_mark:
                break
        return self.step_results, self.state, stats, self.micro_step

class Interact(Action):
    def __init__(self, env, ct, state, step_results, args, checks):
        super().__init__(env=env, ct=ct, state=state,
         step_results=step_results, args=args, checks=checks)
        self.config = {
            "mode":"box",
            "box": 0,
            "mask": None
        }
        self.with_up = False
        self.always_visible = True

class Explore(Action):
    def __init__(self, env, ct, state, step_results, args, checks):
        super().__init__(env=env, ct=ct, state=state,
         step_results=step_results, args=args, checks=checks)

        self.config = {
            "mode":"box",
            "box": 0,
            "mask": None
        }
        self.with_up = False
        self.always_visible = True # The wall is

    def load_graph(self):
        bbox = self.process_state()[2:]
        model_path = f"macro_actions/v3/explore"
        if (bbox[0]+bbox[2]/2)>0.5: # If obj is on right, go around left side
            model_path+= "_right.pb"
        else:
            model_path+= "_left.pb"
        self.graph = load_pb(model_path)

class Avoid(Action):
    def __init__(self, env, ct, state, step_results, args, checks):
        super().__init__(env=env, ct=ct, state=state,
         step_results=step_results, args=args, checks=checks)

        self.config = {
            "mode":"dual",
            "box": 1,
            "mask": 0
        }
        self.with_up = False
        self.always_visible = False

class Climb(Action):
    def __init__(self, env, ct, state, step_results, args, checks):
        super().__init__(env=env, ct=ct, state=state,
         step_results=step_results, args=args, checks=checks)

        self.config = {
            "mode":"mask",
            "box": None,
            "mask": 0
        }
        self.with_up = True
        self.always_visible = True

class Balance(Action):
    def __init__(self, env, ct, state, step_results, args, checks):
        super().__init__(env=env, ct=ct, state=state,
         step_results=step_results, args=args, checks=checks)

        self.config = {
            "mode":"dual",
            "box": 1,
            "mask": 0
        }
        self.with_up = True
        self.always_visible = False

class Rotate(Action):
    def __init__(self, env, ct, state, step_results, args, checks):
        super().__init__(env=env, ct=ct, state=state,
         step_results=step_results, args=args, checks=checks)

    def check_done(self):
        if self.state['done']:
            return True
        return False
    def run(self, pass_mark):
        """Rotate to first visible object"""

        for _ in range(50):
            self.step_results = self.env.step([[0, 1]])
            self.state = preprocess(self.ct, self.step_results, self.micro_step, self.reward)
            self.state['micro_step'] = self.micro_step
            self.micro_step += 1
            self.reward = self.step_results[1]
            # Rotate
            if self.state['obj']: #0 is placeholder macro step, has no effect
                break # and run a few more rotations to point to it
            if self.check_done():
                return self.step_results, self.state, self.macro_stats(None), self.micro_step
        for _ in range(3): # add extra 3 rotations to be looking straight at object
            self.step_results = self.env.step([[0, 1]])
            self.reward = self.step_results[1]
            self.state = preprocess(self.ct, self.step_results, self.micro_step, self.reward)
            self.state['micro_step'] = self.micro_step
            self.micro_step += 1
            if self.check_done():
                return self.step_results, self.state, self.macro_stats(None), self.micro_step
        return self.step_results, self.state, self.macro_stats(
            "Object visible, rotating to it"), self.micro_step


