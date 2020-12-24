import sys
import os
cwd = os.getcwd()
if "Desktop" in cwd:
	sys.path.insert(0, "/Users/ludo/Desktop/animalai/animalai/animalai_train")
	sys.path.insert(1, "/Users/ludo/Desktop/animalai/animalai/animalai")
	env_path = '../env/aaiagain'

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


def run():
	margs = namedtuple('args', 'env seed arenas num_episodes inference distribution max_steps mode save_path')
	arenas = None
	distribution = None
	max_steps = None
	num = 4
	test = True
	args = margs(env=env_path, seed=2, arenas=arenas, num_episodes=num+1,
	             inference=False, distribution=distribution,
	            max_steps=max_steps, mode='collect',save_path=f"biased_traces/test.txt")
	pipe = Pipeline(args, test)
	pipe.buffer_size = num
	res = pipe.test_run()

if __name__ == '__main__':
    run()
