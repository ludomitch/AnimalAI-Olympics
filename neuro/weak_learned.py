from animalai.envs.gym.environment import AnimalAIGym
from animalai.envs.arena_config import ArenaConfig
from centroidtracker import CentroidTracker
import ma2 as macro
from weak_logic import Logic
from utils import preprocess, object_types, filter_observables
import random as rnd
import time

class Pipeline:
    def __init__(self, args, test=False):
        self.args = args
        self.ct = None
        env_path = args.env
        worker_id = rnd.randint(1,20)
        seed = args.seed
        self.arenas = args.arenas
        self.arena_distribution = args.distribution
        self.max_steps = args.max_steps
        self.arena_successes = {k:[0,0] for k in self.arenas}
        self.buffer_size = 30
        self.logic = Logic(self.buffer_size)
        self.test = test
        self.mode = args.mode
        self.save_path = args.save_path
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
        step_results, state, macro_stats, micro_step = ma.run(pass_mark)
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
            start = time.time()
            success_count = 0
            choice = 'random'
            traces = [] # list of lists: [actions, observables, success, macro_steps]
            if self.test:
                choice = 'test'
            for idx in range(self.args.num_episodes+1):
                arena_name = self.reset()
                macro_limit = self.max_steps[arena_name]
                step_results = self.env.step([[0, 0]])  # Take 0,0 step
                global_steps = 0
                macro_step = 0
                reward = 0
                self.ct = {ot: CentroidTracker() for ot in object_types} # Initialise tracker
                actions_buffer = []
                observables_buffer = []

                if (self.mode=='collect')&(idx%self.args.num_episodes==0)&(idx!=0):
                    with open(self.save_path, "w") as text_file:
                        text_file.write(str(traces))
                    break
                if (idx%500==0)&(idx!=0):
                    print(f"{idx}/{self.args.num_episodes} completed")
                    print(self.arena_successes)

                if (idx%self.buffer_size==0)&(idx!=0):
                    end = time.time()
                    print(f"The full run without ILASP: {end-start}s")
                    print(self.arena_successes)
                    with open("success_ratio.txt", "w") as text_file:
                        text_file.write(str(self.arena_successes)+f"The full run without ILASP: {end-start}s")
                    choice = 'ilasp'
                    self.logic.ilasp.generate_examples(traces)
                    self.logic.update_learned_lp()

                while not self.episode_over(step_results[2]):
                    if (global_steps >= 500)|(macro_step)>macro_limit:
                        success = False
                        break
                    state = preprocess(self.ct, step_results, global_steps, reward)
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
                    observables_buffer.append(filter_observables(observables))
                    if state['reward']>self.ac.arenas[0].pass_mark:
                        success = True
                        break
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

