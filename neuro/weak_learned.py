from animalai.envs.gym.environment import AnimalAIGym
from animalai.envs.arena_config import ArenaConfig
from centroidtracker import CentroidTracker
import ma2 as macro
from weak_logic import Logic
from utils import preprocess, object_types, first_steps
import random as rnd
import time
import config as cfg

class Pipeline:
    def __init__(self, args, test=False):
        self.args = args
        self.ct = None
        env_path = args.env
        worker_id = rnd.randint(21,200)
        seed = args.seed
        self.arenas = args.arenas
        self.arena_distribution = args.distribution
        self.max_steps = args.max_steps
        self.test = test

        self.logic = Logic()
        self.mode = args.mode
        self.save_path = args.save_path
        self.env = AnimalAIGym(
            environment_filename=env_path,
            worker_id=worker_id,
            n_arenas=1,
            seed=seed,
            grayscale=False,
            resolution=256,
            inference=args.inference
        )
        self.env._env.train=False

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

    def take_macro_step(self, env, state, step_results, macro_action):
        if isinstance(macro_action['initiate'][0],str):
            action = macro_action['initiate'][0]
            action_args = None
        else:
            action = macro_action["initiate"][0][0]
            action_args = macro_action["initiate"][0][1]

        checks = macro_action['check']
        ma = getattr(macro, action.title())(
            env, self.ct, state, step_results, action_args, checks)
        step_results, state, macro_stats, micro_step = ma.run(self.ac.arenas[0].pass_mark)
        return step_results, state, micro_step, macro_stats["success"]

    def episode_over(self, done):
        if done:
            return True
        return False

    def reset(self):

        if self.mode=='collect':
            name = self.arenas[0]
        else:
            name = rnd.choices(self.arenas, self.arena_distribution)[0]
        self.ac = ArenaConfig(name)
        self.env.reset(self.ac)
        return name


    def learn_run(self):
        try:
            self.arena_successes = {k:[0,0] for k in self.arenas}

            start = time.time()
            success_count = 0
            choice = 'random'
            traces = [] # list of lists: [actions, observables, success, macro_steps]
            for idx in range(self.args.num_episodes+1):
                arena_name = self.reset()
                macro_limit = self.max_steps[arena_name]
                step_results, moving = first_steps(self.env, arena_name)  # Take 0,0 step
                global_steps = 0
                macro_step = 0
                reward = 0
                self.ct = {ot: CentroidTracker() for ot in object_types} # Initialise tracker
                actions_buffer = []
                observables_buffer = []

                if (self.mode=='collect')&(idx!=0)&((idx%self.args.num_episodes==0)|(success_count>=20)):
                    with open(self.save_path, "w") as text_file:
                        text_file.write(str(traces))
                    break
                if (idx%500==0)&(idx!=0):
                    print(f"{idx}/{self.args.num_episodes} completed")
                    print(self.arena_successes)

                while not self.episode_over(step_results[2]):
                    if (global_steps >= self.ac.arenas[0].t)|(macro_step>macro_limit):
                        success = False
                        break
                    state = preprocess(self.ct, step_results, global_steps, reward)
                    if macro_step==0:
                        state['moving'] = moving
                    else:
                        state['moving'] = False
                    macro_action, observables = self.logic.run(
                        macro_step,
                        state,
                        choice=choice)
                    # print(macro_action)
                    # print(observables)
                    step_results, state, micro_step, success = self.take_macro_step(
                        self.env, state, step_results, macro_action
                    )

                    global_steps += micro_step
                    macro_step +=1
                    actions_buffer.append(macro_action['raw'][0])
                    observables_buffer.append(observables)
                    if state['reward']>self.ac.arenas[0].pass_mark:
                        success = True
                        # break
                    else:
                        success = False
                traces.append([actions_buffer, observables_buffer, success, macro_step])
                success_count += success
                self.arena_successes[arena_name][0]+=int(success)
                self.arena_successes[arena_name][1]+=1

            end = time.time()
            print(f"The full run took {end-start}s")
            print(self.arena_successes)
            self.env.close()
        except KeyboardInterrupt:
            self.env.close()

    def test_run(self):
        try:
            start = time.time()
            success_count = 0
            choice = 'test'
            traces = [] # list of lists: [actions, observables, success, macro_steps]
            self.arenas = []
            for k,v in cfg.COMPETITION_CONFIGS.items():
                for arena in v:
                    self.arenas.append([k,arena])
            self.arena_successes = {
                k:{i:0 for i in v} for k,v in cfg.COMPETITION_CONFIGS.items()
            }
            for arena in self.arenas:
                self.ac = ArenaConfig(f"../competition_configurations/{arena[1]}.yml")
                self.env.reset(self.ac)
                global_steps = 0
                macro_step = 0
                self.ct = {ot: CentroidTracker() for ot in object_types} # Initialise tracker
                actions_buffer = []
                observables_buffer = []
                step_results = self.env.step([0,0])
                state = {'reward':0}
                while not self.episode_over(step_results[2]):
                    if (global_steps >= self.ac.arenas[0].t):
                        success = False
                        break
                    state = preprocess(self.ct, step_results, global_steps, state['reward'])
                    state['moving'] = False
                    macro_action, observables = self.logic.run(
                        macro_step,
                        state,
                        choice=choice)
                    # print(macro_action)
                    # print(observables)
                    step_results, state, micro_step, success = self.take_macro_step(
                        self.env, state, step_results, macro_action
                    )

                    global_steps += micro_step
                    macro_step +=1
                    actions_buffer.append(macro_action['raw'][0])
                    observables_buffer.append(observables)
                    # print(self.ac.arenas[0].pass_mark)
                    # print(state['reward'])
                    if state['reward']>self.ac.arenas[0].pass_mark:
                        success = True
                        # break
                    else:
                        success = False
                # print(f"{arena}: {success}")
                traces.append([actions_buffer, observables_buffer, success, macro_step, arena[1]])
                success_count += success
                self.arena_successes[arena[0]][arena[1]]=int(success)

            with open(f"test_run_traces{self.save_path}.txt", "w") as text_file:
                text_file.write(str(traces))
            with open(f"test_run_successes{self.save_path}.txt", "w") as text_file:
                text_file.write(str(self.arena_successes))
            end = time.time()
            print(self.arena_successes)
            print(f"The full run took {end-start}s")
            print(f"TOTAL SUCCESSES: {success_count}/{len(self.arenas)}")

            self.env.close()
        except KeyboardInterrupt:
            print(f"TOTAL SUCCESSES: {success_count}/{len(self.arenas)}")
            self.env.close()
