from animalai.envs.gym.environment import AnimalAIGym
from animalai.envs.arena_config import ArenaConfig
from centroidtracker import CentroidTracker
import ma2 as macro
from weak_logic import Logic
from utils import preprocess, object_types, filter_observables
import random as rnd

class Pipeline:
    def __init__(self, args, test=False):
        self.args = args
        self.ct = None
        self.gg_id = 0
        env_path = args.env
        worker_id = 1
        seed = args.seed
        self.arenas = [ArenaConfig(i) for i in args.arenas]
        self.buffer_size = 30
        self.logic = Logic(self.buffer_size)
        self.test = test
        self.env = AnimalAIGym(
            environment_filename=env_path,
            worker_id=worker_id,
            n_arenas=1,
            seed=seed,
            grayscale=False,
            resolution=84,
            inference=args.inference
        )

    def format_macro_results(self, stats):
        res = """
        Success: {success}
        Micro steps taken: {micro_step}
        Total reward: {reward}
        Checks satisfied: {checks}
        """.format(
            **stats
        )
        return res

    def take_macro_step(self, env, state, step_results, macro_action, pass_mark=0):
        if isinstance(macro_action['initiate'][0],str):
            action = macro_action['initiate'][0]
            action_args = None
        else:
            action = macro_action["initiate"][0][0]
            action_args = macro_action["initiate"][0][1]

        checks = macro_action['check']
        ma = getattr(macro, action.title())(
            env, self.ct, state, step_results, action_args, checks)
        # print(f"Initiating macro_action: {action}")
        step_results, state, macro_stats, micro_step = ma.run(pass_mark)
        # print(f"Results: {self.format_macro_results(macro_stats)}")
        return step_results, state, micro_step, macro_stats["success"]

    def episode_over(self, done):
        if done:
            return True
        return False

    def reset(self):
        ac = rnd.choice(self.arenas)
        self.env.reset(ac)

    def learn_run(self):
        success_count = 0
        choice = 'random'
        traces = [] # list of lists: [actions, observables, success, macro_steps]
        if self.test:
            choice = 'test'
        for idx in range(self.args.num_episodes):
            self.reset()
            step_results = self.env.step([[0, 0]])  # Take 0,0 step
            global_steps = 0
            macro_step = 0
            reward = 0

            self.ct = {ot: CentroidTracker() for ot in object_types} # Initialise tracker
            actions_buffer = []
            observables_buffer = []
            if (idx%self.buffer_size==0)&(idx!=0):
                choice = 'ilasp'
                self.logic.ilasp.generate_examples(traces)
                self.logic.update_learned_lp()

            while not self.episode_over(step_results[2]):
                if global_steps >= 250:
                    success = False
                    print("Exceeded max global steps")
                    break
                state = preprocess(self.ct, step_results, global_steps, reward)
                macro_action, observables = self.logic.run(
                    macro_step,
                    state,
                    choice=choice)
                print(macro_action)
                if self.test:
                    print(macro_action)
                step_results, state, micro_step, success = self.take_macro_step(
                    self.env, state, step_results, macro_action
                )

                global_steps += micro_step
                macro_step +=1
                actions_buffer.append(macro_action['raw'][0])
                observables_buffer.append(filter_observables(observables))
                if state['reward']>self.arenas[0].arenas[0].pass_mark:
                    success = True
                    break
                else:
                    success = False
            traces.append([actions_buffer, observables_buffer, success, macro_step])
            # nl_success = "Success" if success else "Failure"
            # print(f"Episode was a {nl_success}")
            success_count += success

        print(
            f"Final results: {success_count}/{self.args.num_episodes} episodes were completed successfully"
        )
        self.env.close()
