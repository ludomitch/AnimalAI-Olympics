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
    env_path = 'linux_builds/aaiv3'

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
from meta_policy_bank import mps

def get_args():
    parser = argparse.ArgumentParser('AnimalAI training loop')
    parser.add_argument('-mp', '--mp', type=int, default=10, help='mp')
    parser.add_argument('-n', '--num', type=int, default=1000, help='Number of traces to collect')
    parser.add_argument('-a', '--arena', type=str, default="ba", help='Number of traces to collect')
    args = parser.parse_args()
    return args

def run(opt):
    margs = namedtuple('args', 'env seed arenas num_episodes inference distribution max_steps mode save_path')
    arenas = None
    distribution = None
    max_steps = None
    test = True
    save_path = f"test_stats/mp/{opt.mp}/{opt.num}"
    args = margs(env=env_path, seed=opt.num, arenas=arenas, num_episodes=1,
                 inference=False, distribution=distribution,
                max_steps=max_steps, mode='collect',save_path=save_path)
    pipe = Pipeline(args, test)
    pipe.logic.clingo.meta_lp = mps[opt.mp]
    res = pipe.test_run()

def run1(opt):
    mps = {'wall': {1: b'\n', 2: b':~ initiate(interact(V1)).[-1@3, V1]\n:~ initiate(rotate).[-1@4]\n\n', 3: b':~ initiate(interact(V1)).[-1@2, V1]\n:~ initiate(rotate).[-1@1]\n:~ initiate(explore(V1)).[-1@3, V1]\n\n', 4: b':~ initiate(explore(V1)).[-1@2, V1]\n:~ initiate(rotate).[-1@1]\n:~ initiate(interact(V1)).[-1@3, V1]\n\n', 5: b':~ initiate(rotate).[-1@1]\n:~ initiate(explore(V1)).[-1@2, V1]\n:~ initiate(interact(V1)).[-1@4, V1]\n\n', 10: b':~ initiate(interact(V1)).[-1@5, V1]\n:~ initiate(rotate).[-1@3]\n:~ initiate(explore(V1)).[-1@4, V1]\n\n', 15: b':~ initiate(interact(V1)).[-1@5, V1]\n:~ initiate(rotate).[-1@3]\n:~ initiate(explore(V1)).[-1@4, V1]\n\n', 20: b':~ initiate(rotate).[-1@2]\n:~ initiate(interact(V1)).[-1@4, V1]\n\n'}, 'red_maze': {1: b'\n', 2: b':~ initiate(avoid).[-1@1]\n\n', 3: b':~ initiate(avoid).[-1@1]\n\n', 4: b':~ initiate(avoid).[-1@1]\n\n', 5: b':~ initiate(avoid).[-1@1]\n\n', 10: b':~ initiate(avoid).[-1@1]\n\n', 15: b':~ initiate(avoid).[-1@1]\n\n', 20: b':~ initiate(avoid).[-1@1]\n\n'}, 'ramp': {1: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 2: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 3: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 4: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 5: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 10: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 15: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 20: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n'}, 'ymaze3': {1: b':~ initiate(interact(V1)).[-1@4, V1]\n\n', 2: b':~ initiate(interact(V1)).[-1@4, V1]\n\n', 3: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n', 4: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n', 5: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n', 10: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n', 15: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n', 20: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n'}, 'numerosity': {1: b':~ initiate(collect).[-1@4]\n\n', 2: b':~ initiate(collect).[-1@4]\n\n', 3: b':~ initiate(collect).[-1@4]\n\n', 4: b':~ initiate(collect).[-1@1]\n:~ initiate(drop(V1)), more_goals(V1).[-1@4, V1]\n\n', 5: b':~ initiate(collect).[-1@4]\n\n', 10: b':~ initiate(collect).[-1@2]\n:~ initiate(observe).[-1@4]\n:~ initiate(drop(V1)), more_goals(V1).[-1@5, V1]\n\n', 15: b':~ initiate(collect).[-1@1]\n:~ initiate(drop(V1)), more_goals(V1).[-1@4, V1]\n\n', 20: b':~ initiate(rotate).[-1@2]\n:~ initiate(collect).[-1@1]\n:~ initiate(drop(V1)), more_goals(V1).[-1@4, V1]\n\n'}, 'choice': {1: b':~ initiate(interact(V1)).[-1@1, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 2: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 3: b':~ initiate(interact(V1)).[-1@3, V1]\n:~ initiate(explore(V1)), not occludes(V1).[-1@2, V1]\n\n', 4: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 5: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 10: b':~ initiate(interact(V1)).[-1@3, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 15: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 20: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n'}, 'moving': {1: b':~ initiate(interact(V1)).[-1@2, V1]\n:~ initiate(explore(V1)).[-1@1, V1]\n:~ danger, initiate(observe).[-1@6]\n\n', 2: b':~ initiate(interact(V1)).[-1@2, V1]\n:~ initiate(explore(V1)).[-1@1, V1]\n:~ danger, initiate(observe).[-1@6]\n\n', 3: b':~ initiate(interact(V1)).[-1@2, V1]\n:~ initiate(explore(V1)).[-1@1, V1]\n:~ danger, initiate(observe).[-1@6]\n\n', 4: b':~ initiate(interact(V1)).[-1@2, V1]\n:~ initiate(explore(V1)).[-1@1, V1]\n:~ danger, initiate(observe).[-1@5]\n\n', 5: b':~ initiate(observe).[-1@2]\n:~ initiate(explore(V1)).[-1@3, V1]\n:~ initiate(interact(V1)).[-1@4, V1]\n:~ danger, initiate(observe).[-1@6]\n\n', 10: b':~ initiate(observe).[-1@1]\n:~ initiate(interact(V1)), not on(agent,platform).[-1@3, V1]\n:~ initiate(explore(V1)), occludes(V1).[-1@2, V1]\n\n', 15: b':~ initiate(observe).[-1@1]\n:~ initiate(interact(V1)), not on(agent,platform).[-1@3, V1]\n:~ initiate(explore(V1)), occludes(V1).[-1@2, V1]\n\n', 20: b':~ initiate(explore(V1)).[-1@2, V1]\n:~ initiate(interact(V1)).[-1@3, V1]\n:~ initiate(observe).[-1@1]\n:~ danger, initiate(observe).[-1@4]\n\n'}}
    margs = namedtuple('args', 'env seed arenas num_episodes inference distribution max_steps mode save_path')
    arena_mapper = {
        'choice': "Spatial Elimination",
        "red_maze": "Avoid Red ",
        "ymaze3": "Y-Mazes",
        "ramp":"Ramp Usage",
        "moving":"Object Permanence"
    }
    arenas = arena_mapper[opt.arena]
    distribution = None
    max_steps = None
    test = True
    save_path = f"test_stats/mp/{opt.arena}/{opt.mp}-{opt.num}"
    args = margs(env=env_path, seed=opt.num, arenas=arenas, num_episodes=1,
                 inference=False, distribution=distribution,
                max_steps=max_steps, mode='collect',save_path=save_path)
    pipe = Pipeline(args, test)
    pipe.logic.clingo.meta_lp = mps[opt.arena][opt.mp].decode("utf-8")
    res = pipe.test_run()

if __name__ == '__main__':
    opt = get_args()
    run1(opt)
