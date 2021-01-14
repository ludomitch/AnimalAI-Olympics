import sys
import os
cwd = os.getcwd()
if "Desktop" in cwd:
	sys.path.insert(0, "/Users/ludo/Desktop/animalai/animalai/animalai_train")
	sys.path.insert(1, "/Users/ludo/Desktop/animalai/animalai/animalai")
	env_path = '../envs/aaiv2'

else:
	sys.path.insert(0, "/media/home/ludovico/aai/animalai")
	sys.path.insert(1, "/media/home/ludovico/aai/animalai_train")
	env_path = 'linux_builds/aai'

from weak_learned import Pipeline
from collections import namedtuple
from animalai.envs.arena_config import ArenaConfig
import config as cfg


import argparse
import tensorflow as tf
tf.compat.v1.logging.set_verbosity(tf.compat.v1.logging.ERROR)

from mlagents.trainers.trainer_util import load_config;
from animalai_train.run_options_aai import RunOptionsAAI;
from animalai_train.run_training_aai import run_training_aai;
from animalai.envs.arena_config import ArenaConfig

import warnings
warnings.filterwarnings('ignore')

def get_args():
    parser = argparse.ArgumentParser('AnimalAI training loop')
    parser.add_argument('-a', '--arena', type=str, default='ramp', help='Arena name')
    parser.add_argument('-n', '--num', type=int, default=1000, help='Number of traces to collect')
    args = parser.parse_args()
    return args

def run(opt):
	margs = namedtuple('args', 'env seed arenas num_episodes inference distribution max_steps mode save_path')

	arenas = [
		f"training_set/{opt.arena}.yml"
	]
	distribution = [1]
	max_steps = {
		"training_set/ramp.yml":1,
		"training_set/ramp2.yml":1,
		"training_set/red_maze.yml":0,
		"training_set/wall.yml":2,
		"training_set/choice.yml":1,
		"training_set/numerosity.yml": 5,
		"training_set/ymaze.yml": 0,
		"training_set/ymaze2.yml": 0,
		"training_set/ymaze3.yml": 0,
		"training_set/moving.yml": 3
	}
	args = margs(
		env=env_path, seed=1,
		arenas=arenas, num_episodes=opt.num,
		inference=False, distribution=distribution,
		max_steps=max_steps, mode='collect', save_path=f"traces/early_traces/{opt.arena}.txt")
	pipe = Pipeline(args)
	res = pipe.learn_run()

if __name__ == '__main__':
    opt = get_args()
    run(opt)
