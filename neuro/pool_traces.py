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

import warnings
warnings.filterwarnings('ignore')
from weak_logic import Logic
def run():
    arenas = ['wall', 'red_maze', 'choice', 'ramp', 'numerosity', 'ymaze', 'moving']
    # arenas = ['red_maze']
    # Concat traces
    traces = []
    for arena in arenas:
        my_file = open(f"simple_traces/{arena}.txt", "r")
        content = my_file.read()
        traces+= eval(content)

    logic = Logic()
    logic.ilasp.generate_examples(traces)
    logic.update_learned_lp()

if __name__ == '__main__':
    run()
