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
    arenas = ['wall', 'red_maze', 'choice', 'ramp', 'ramp2', 'numerosity', 'ymaze', 'ymaze2', 'moving']
    #arenas = ['wall']
    # Concat traces
    traces = []
    for arena in arenas:
        my_file = open(f"early_traces/{arena}.txt", "r")
        content = eval(my_file.read())
        s = len([i for i in content if i[2]])
        t = len(content)
        l = t-s
        reward = [-s/t*10, l/t*30] # fail, succ
        for c,i in enumerate(content):
            content[c][2] = reward[content[c][2]]
            if arena!='moving':
                content[c][1][0] = content[c][1][0].replace('moving.\n', '')
        traces+= content
    logic = Logic()
    logic.ilasp.generate_examples(traces)
    logic.update_learned_lp()

if __name__ == '__main__':
    run()
