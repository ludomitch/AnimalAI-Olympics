import sys
sys.path.insert(0, "/media/home/ludovico/aai/animalai")
sys.path.insert(1, "/media/home/ludovico/aai/animalai_train")

from weak_learned import Pipeline
from collections import namedtuple
from animalai.envs.arena_config import ArenaConfig
import config as cfg

if __name__=="__main__":
	margs = namedtuple('args', 'env seed arenas num_episodes inference distribution max_steps')
	env_path = 'linux_builds/aai'
	# arenas = [
	# 	f"../competition_configurations/{i}.yml" for i in list(cfg.COMPETITION_CONFIGS['Ramp Usage'])
	# ]
	arena_names = [
		"training_set/ramp.yml",
		"training_set/red_maze.yml",
		"training_set/wall.yml",
		"training_set/choice.yml"
	]
	distribution = [0.5, 0.07, 0.03, 0.4]
	max_steps = {
		"training_set/ramp.yml":2,
		"training_set/red_maze.yml":1,
		"training_set/wall.yml":3,
		"training_set/choice.yml":2
	}
	num = len(arenas)*1000
	args = margs(
		env=env_path, seed=1,
		arenas=arenas, num_episodes=num+1,
		inference=False, distribution=distribution,
		max_steps=max_steps)
	pipe = Pipeline(args)
	pipe.buffer_size = num
	res = pipe.learn_run()
