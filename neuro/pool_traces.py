import sys
import os
cwd = os.getcwd()
if "Desktop" in cwd:
    sys.path.insert(0, "/Users/ludo/Desktop/animalai/animalai/animalai_train")
    sys.path.insert(1, "/Users/ludo/Desktop/animalai/animalai/animalai")

else:
    sys.path.insert(0, "/media/home/ludovico/aai/animalai")
    sys.path.insert(1, "/media/home/ludovico/aai/animalai_train")

import warnings
warnings.filterwarnings('ignore')
from weak_logic import Logic
def run():
    incremental = [
    ['wall'],
    ['wall', 'red_maze'],
    ['wall', 'red_maze', 'ramp'],
    ['wall', 'red_maze', 'ramp', 'ymaze3'],
    ['wall', 'red_maze', 'ramp', 'ymaze3', 'numerosity'],
    ['wall', 'red_maze', 'ramp', 'ymaze3', 'numerosity', 'choice'],
    ['wall', 'red_maze', 'ramp', 'ymaze3', 'numerosity', 'choice', 'moving']]
    # Concat traces
    traces = []
    for num_i, arenas in enumerate(incremental):
        for arena in arenas:
            my_file = open(f"traces/early_traces/{arena}.txt", "r")
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
        print(f"/incremental_traces1/{num_i}.lp")
        logic.ilasp.generate_examples(traces)
        logic.update_learned_lp(f"traces/incremental_traces/{num_i}.lp")
        print(f"Run {c} done")

if __name__ == '__main__':
    run()
