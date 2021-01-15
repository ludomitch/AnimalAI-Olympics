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

def trim_traces(content, h):
    res = []
    s = 0
    for i in content:
        res.append(i)
        if i[2]:
            s+=1
        if s>=h:
            break
    return res
def run():
    success_num = [5,10,15,20]
    arenas = ['wall', 'red_maze', 'ramp', 'ymaze3', 'numerosity', 'choice', 'moving']
    # Concat traces
    for s_n in success_num:
        for arena in arenas:
            my_file = open(f"traces/early_traces/{arena}.txt", "r")
            content = eval(my_file.read())
            content = trim_traces(content,s_n)
            s = len([i for i in content if i[2]])
            t = len(content)
            l = t-s
            reward = [-s/t*10, l/t*30] # fail, succ
            for c,i in enumerate(content):
                content[c][2] = reward[content[c][2]]
                if arena!='moving':
                    content[c][1][0] = content[c][1][0].replace('moving.\n', '')
            # traces+= content
            logic = Logic()
            logic.ilasp.generate_examples(content)
            logic.update_learned_lp(f"traces/analysis/{arena}/{s_n}.lp")
            print(f"Arena {arena}, trim {s_n} Done")


def run1():
    success_num = [5,10,15,20]
    arenas = ['wall', 'red_maze', 'ramp', 'ymaze3', 'numerosity', 'choice', 'moving']
    # Concat traces
    for s_n in success_num:
        traces = []
        for arena in arenas:
            my_file = open(f"traces/early_traces/{arena}.txt", "r")
            content = eval(my_file.read())
            content = trim_traces(content,s_n)
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
        logic.update_learned_lp(f"traces/analysis/all/{s_n}.lp")
        print(f"Trim {s_n} Done")
def run2():
    success_num = list(range(21))
    arenas = ['wall', 'red_maze', 'ramp', 'ymaze3', 'numerosity', 'choice', 'moving']
    # Concat traces
    res = []
    trace_length = []
    for s_n in success_num:
        traces = []
        for arena in arenas:
            my_file = open(f"traces/early_traces/{arena}.txt", "r")
            content = eval(my_file.read())
            content = trim_traces(content,s_n)
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
        res.append(logic.ilasp.tree)
        trace_length.append(len(traces))

        # logic.update_learned_lp(f"traces/analysis/all/{s_n}.lp")
        print(f"Trim {s_n} Done")
    print(res)
    print(trace_length)
    with open("convergence.txt", "w") as text_file:
        text_file.write(str(trace_length)+str(res))
if __name__ == '__main__':
    run2()
