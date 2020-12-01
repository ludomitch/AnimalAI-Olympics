from animalai.envs.gym.environment import AnimalAIGym
from centroidtracker import CentroidTracker

from macro_action import MacroAction
from weak_logic import Logic
from utils import preprocess, object_types

class Pipeline:
    def __init__(self, args, test=False):
        self.args = args
        self.ct = None
        self.gg_id = 0
        env_path = args.env
        worker_id = 1
        seed = args.seed
        self.arenas = args.arena_config
        self.buffer_size = 30
        first_arena = self.arenas[0] if self.arenas is not None else None

        # ac = ArenaConfig(arena_path)
        # Load Unity environment based on config file with Gym or ML agents wrapper
        self.env = AnimalAIGym(
            environment_filename=env_path,
            worker_id=worker_id,
            n_arenas=1,
            arenas_configurations=first_arena,
            seed=seed,
            grayscale=False,
            resolution=84,
            inference=args.inference
        )
        self.logic = Logic(self.buffer_size)
        self.test = test

    def comp_stats(self):
        pass

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
        ma = MacroAction(env, self.ct, state, step_results, macro_action)
        # print(f"Initiating macro_action: {macro_action['initiate']}")
        step_results, state, macro_stats, micro_step = ma.run(pass_mark)
        # print(f"Results: {self.format_macro_results(macro_stats)}")
        return step_results, state, micro_step, macro_stats["success"]

    def episode_over(self, done):
        if done:
            return True
        return False

    def learn_run(self):
        success_count = 0
        choice = 'random'
        traces = [] # list of lists: [actions, observables, success, macro_steps]
        if self.test:
            choice = 'test'
        for idx in range(self.args.num_episodes):
            self.env.reset(self.arenas[0])
            # print(f"======Running episode {idx}=====")
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
                if global_steps >= 1000:
                    success = False
                    print("Exceeded max global steps")
                    break
                state = preprocess(self.ct, step_results, global_steps, reward)
                macro_action, observables = self.logic.run(
                    macro_step,
                    state,
                    choice=choice)
                if self.test:
                    print(macro_action)
                step_results, state, micro_step, success = self.take_macro_step(
                    self.env, state, step_results, macro_action
                )
                global_steps += micro_step
                macro_step +=1
                actions_buffer.append(macro_action['raw'][0])
                observables_buffer.append(observables)

            traces.append([actions_buffer, observables_buffer, success, macro_step])
            # nl_success = "Success" if success else "Failure"
            # print(f"Episode was a {nl_success}")
            success_count += success

        print(
            f"Final results: {success_count}/{self.args.num_episodes} episodes were completed successfully"
        )
        self.env.close()
