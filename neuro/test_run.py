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
	env_path = 'linux_builds/AnimalAI'

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
    parser.add_argument('-n', '--num', type=int, default=1000, help='Number of traces to collect')
    args = parser.parse_args()
    return args

def run(opt):
	margs = namedtuple('args', 'env seed arenas num_episodes inference distribution max_steps mode save_path')
	arenas = None
	distribution = None
	max_steps = None
	test = True
	args = margs(env=env_path, seed=opt.num, arenas=arenas, num_episodes=1,
	             inference=False, distribution=distribution,
	            max_steps=max_steps, mode='collect',save_path=opt.num)
	pipe = Pipeline(args, test)
	res = pipe.test_run()

if __name__ == '__main__':
    opt = get_args()
    run(opt)
