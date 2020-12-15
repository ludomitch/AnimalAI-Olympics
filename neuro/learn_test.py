import sys
sys.path.insert(0, "/media/home/ludovico/aai/animalai")
sys.path.insert(1, "/media/home/ludovico/aai/animalai_train")

from weak_learned import Pipeline
from collections import namedtuple
from animalai.envs.arena_config import ArenaConfig
import config as cfg

if __name__=="__main__":
	margs = namedtuple('args', 'env seed arenas num_episodes inference')
	env_path = 'linux_builds/aai'
	# arenas = [
	# 	f"../competition_configurations/{i}.yml" for i in list(cfg.COMPETITION_CONFIGS['Ramp Usage'])
	# ]
	arenas = [
	    "training_set/ramp.yml",
	    "training_set/red_maze.yml",
	    "training_set/wall.yml"
	]
	num = len(arenas)*3
	args = margs(env=env_path, seed=1, arenas=arenas, num_episodes=num+1, inference=False)
	pipe = Pipeline(args)
	pipe.buffer_size = num
	res = pipe.learn_run()
