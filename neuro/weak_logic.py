import operator
from collections import deque, namedtuple
import random as rnd
import subprocess
import numpy as np

from clyngor import ASP

from utils import get_overlap, get_distance

AnswerSet = namedtuple('AS', ['r', 'p', 'a', 'o']) # r for raw, p for parsed, a for arity
parse_single_args = lambda x: list(list(ASP(x+'.').parse_args)[0])[0]
parse_args = lambda x: list(list(ASP(x).sorted)[0])

sample_vars = ["X", "Y", "Z"]
macro_actions = [
    "explore",
    "interact",
    "rotate"
]
valid_observables = {
    'present',
    'visible',
    'on',
    'adjacent',
    'goal',
    'goal1',
    'wall',
    'platform',
    'red'
}

main_lp = """
present(X):-goal(X).
present(X):- visible(X).
object(X):- present(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).
"""
action_logic = """

:- initiate(X), initiate(Y), X!=Y.
initiate :- initiate(X).
:- not initiate.

0{initiate(rotate)}1.
0{initiate(interact(X))}1:- object(X).
0{initiate(explore(X,Y))}1:- object(X), object(Y), X!=Y.
"""

test_lp = main_lp + action_logic + """
:~ initiate(interact(V1)).[1@2, V1]
:~ goal(V1), initiate(explore(V1,V2)).[1@1, V1, V2]
:~ goal(V1), not initiate(interact(V1)), not initiate(rotate).[1@3, V1]
"""


def variabilise(lp):
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
    p = parse_args(lp)
    # Reduce nested functions
    y = [i[1][0]  if (isinstance(i[1][0], tuple)) else i for i in p]
    # Create unique var map
    var_map = {}
    for lit in y:
        for arg in lit[1]:
            if (arg not in var_map)&isinstance(arg, int):
                var_map[arg] = letters.pop(0)
    # Sort vars by largest so smaller ones aren't replacing bigger numbers
    order = sorted(var_map, reverse=True)
    # Update lp
    for var in order:
        lp = lp.replace(str(var), var_map[var])

    return lp

class Grounder:
    def __init__(self):
        pass
    # @staticmethod
    # def in_front(macro_step,state):
    #     in_front = ""
    #     for bbox, _, _, _id in state['obj']:
    #         for bbox1, _, _, _id1 in state['obj']:
    #             dist = get_distance(bbox, bbox1)
    #             if (_id1!=_id)&(dist<0.02):
    #                 in_front += f"adjacent({_id},{_id1}, {macro_step}).\n"
    #     return in_front
    # @staticmethod
    # def adjacent(macro_step,state):
    #     adjacent = ""
    #     for bbox, _, _, _id in state['obj']:
    #         for bbox1, _, _, _id1 in state['obj']:
    #             dist = get_distance(bbox, bbox1)
    #             if (_id1!=_id)&(dist<0.01):
    #                 adjacent += f"adjacent({_id},{_id1}).\n"
    #     return adjacent
    # @staticmethod
    # def timestep(macro_step,_):
    #     timestep = f"timestep({macro_step}).\n"
    #     return timestep
    @staticmethod
    def on(macro_step,state):
        on = ""
        bottom_rect = [0, 0.75, 1, 0.25]
        for bbox, _, _, _id in state['obj']:
            if get_overlap(bbox, bottom_rect)>0.5:
                on += f"on(agent,{_id}).\n"
        return on

    @staticmethod
    def visible(macro_step,state):
        visible = ""
        for box, obj_type, _occ_area, _id in state['obj']:
            visible += f"visible({_id}).\n"
            if obj_type!="goal":
                visible +=f"{obj_type}({_id}).\n"
        return visible
    @staticmethod
    def goal_visible(_,state):
        try:
            gg_id = next(i[3] for i in state['obj'] if i[1] in ['goal', 'goal1'])
        except StopIteration:
            gg_id = 42
        return f"goal({gg_id}).\n"
    def run(self, macro_step, state):
        res = ""
        for k,v in vars(Grounder).items():
            if isinstance(v, staticmethod):
                res+= getattr(self, k)(macro_step,state)
        return res

class Clingo:
    def __init__(self):
        self.learned_lp = None

    def random_action_grounder(self, ground_observables):
        lp = f"""
            {ground_observables}
            present(X):-goal(X).
            present(X):- visible(X).
            object(X):- present(X).
            initiate(explore(X,Y)):- object(X), object(Y), X!=Y.
            initiate(interact(X)):-object(X).
            initiate(rotate).
            """
        res = self.asp(lp)
        filtered_mas = [i for i in res.r[0] if 'initiate' in i]
        rand_action = rnd.choice(filtered_mas)
        # print([i for i in res.r[0] if 'initiate' in i])
        return [rand_action]

    @staticmethod
    def asp(lp):
        as1 = list(ASP(lp).atoms_as_string)
        as2 = list(ASP(lp).parse_args)
        if len(as1)>1:
            as3 = list(ASP(lp).with_optimality)
            # print(as3)
            try:
                opt_idx = [c for c,i in enumerate(as3) if i[2]][0]# optimal AS
            except IndexError: # tied
                opt_idx = -1
        else:
            opt_idx = 0
        return AnswerSet(r=as1, p=as2, a=len(as1), o=opt_idx)


    def macro_processing(self, answer_set):
        # Look for initiate
        res = {
            'initiate':[],
            'check':[],
            'raw':[]
        }
        if not isinstance(answer_set, list):
            answer_set = answer_set.r[answer_set.o] # Take optimal AS

        for literal in answer_set:
            if 'initiate(' in literal:
                # print(literal)

                # From initiate(action(args),ts), select action(args)
                res['initiate'].append(parse_single_args(literal)[1][0])
                res['raw'].append(literal)

        # print(res['initiate'])
        # print('------')


        # No action returned
        if not res['initiate']:
            return False

        # if two actions are returned from program then use random action.
        if len(res['initiate'])>1:
            chc = rnd.choice(list(range(len(res['initiate']))))
            res['raw'] = res['raw'][chc]
            res['initiate'] = res['initiate'][chc]

        # Add checks for chosen action
        checks = list(ASP(f"""            
            {res['raw'][0]}.
            check(visible, Y):- initiate(explore(X,Y)).
            check(time, 250):- initiate(explore(X,Y)).
            check(time, 150):- initiate(interact(X)).
            check(time, 250):- initiate(avoid_red).
            check(time, 50):- initiate(rotate).""").atoms_as_string)
        checks = checks[0]
        checks = [parse_single_args(i)[1] for i in list(checks) if 'check' in i]
        res['check'] = checks
        return res

    def run(self, observables, random=False, test=False):
        # Just ground macro actions based on observables
        if random|(self.learned_lp is None):
            res = self.random_action_grounder(observables)
        elif test:
            lp = test_lp + observables
            res = self.asp(lp)

        else: # Run full lp
            lp = main_lp + action_logic + self.learned_lp + observables
            res = self.asp(lp)

        return self.macro_processing(res)

class Ilasp:
    def __init__(self, memory_len=40):
        # Examples are [int:weight, string:example]
        self.memory_len = memory_len
        self.examples = deque(maxlen=self.memory_len)
        self.first = None

    def create_mode_bias(self):
        return """
#modeo(1, initiate(rotate)).
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(explore(var(x), var(y)))).
#modeo(1, goal(var(x))).
#modeo(1, visible(var(x))).
#modeo(1, occludes(var(x),var(y))).
#weight(1).
#weight(-1).
#maxv(4).
#maxp(3).
"""

    def extract_action(self, action):
        res = action.split('initiate(')
        res = res[0].split('(')[0]
        return res
    def expand_trace(self, trace):
        discount_factor = 0.9
        actions, states, success, len_trace = trace
        success = 10 if success else -10
        values = []
        for step in range(len_trace):
            values.append(success*discount_factor**(len_trace-step-1))
        return actions, states, values

    def generate_examples(self, traces):

        actions = []
        states = []
        values = []
        print("Success num:", sum(i[2] for i in traces[-30:]))
        for trace in traces:
            a, s, v = self.expand_trace(trace)
            actions += a
            states += s
            values += v

        pairs = [variabilise(s+f"{a}.") for s,a in zip(states,actions)]
        unique_pairs = list(set(pairs))
        var_states = [variabilise(s) for s in states]
        unique_states = list(set(var_states))
        pairs = [[unique_pairs.index(p),unique_states.index(s)] for s,p in zip(var_states, pairs)]

        tree = {s: {} for s in range(len(unique_states))}
        for c, p in enumerate(pairs):
            if p[0] in tree[p[1]]:
                tree[p[1]][p[0]].append(c)
            else:
                tree[p[1]][p[0]] = [c]

        examples = ""
        order = ""
        e_c = 0
        o_c = 0
        # Rolling average for each action
        for s,d in tree.items():
            if len(d)==1:
                continue
            for a,v in d.items():
                tree[s][a] = sum(values[i] for i in v)/len(v)

            ranking = sorted(tree[s].items(), key=operator.itemgetter(1), reverse=True)
            top_action = e_c
            for c, i in enumerate(ranking):
                action, val = i
                examples += f"#pos(a{e_c},\n{{}},\n{{}},\n{{{unique_pairs[action]}}}).\n%%Value was:{val}\n"
                if c!=0:
                    order+= f"#brave_ordering(b{o_c}@10, a{top_action}, a{e_c}).\n"
                    o_c +=1
                e_c +=1


            # examples += f"#pos(a{e_c},\n{{}},\n{{}},\n{{{unique_pairs[ranking[0][0]]}}}).\n"
            # e_c +=1
            # for i in range(0, len(ranking)-1):
            #     examples += f"#pos(a{e_c},\n{{}},\n{{}},\n{{{unique_pairs[ranking[i+1][0]]}}}).\n"
            #     order+= f"#brave_ordering(b{o_c}@3, a{e_c-1}, a{e_c}).\n"
            #     e_c +=1


        # # Ranking over similar states
        # unique_states = {}
        # unique_id = 0
        # for c, o in enumerate(states):
        #     found = False

        #     for k, v in unique_states.items():
        #         if o==v['state']:
        #             unique_states[k]['idx'].append(c)
        #             if actions[c] in unique_states[k]['actions']:
        #                 unique_states[k]['actions'][actions[c]].append(values[c])
        #             else:
        #                 unique_states[k]['actions'][actions[c]] = [values[c]]
        #             found = True
        #             break
        #     if not found:
        #         found = False
        #         unique_states[unique_id] = {
        #         'state': o, 'idx':[c],
        #          'actions':{
        #             actions[c] : [values[c]]
        #          }}
        #         unique_id+=1

        # examples = ""
        # order = ""
        # e_c = 0
        # o_c = 0
        # # Rolling average for each action
        # for s,d in unique_states.items():
        #     if len(d['actions'].keys())==1:
        #         continue
        #         examples += f"#pos(a{e_c},\n{{}},\n{{}},\n{{{list(d['actions'])[0]}.\n{d['state']}}}).\n"
        #         e_c +=1
        #     else:
        #         for a,v in d['actions'].items():
        #             unique_states[s]['actions'][a] = sum(v)/len(v)

        #         ranking = sorted(unique_states[s]['actions'].items(), key=operator.itemgetter(1), reverse=True)
        #         examples += f"#pos(a{e_c},\n{{}},\n{{}},\n{{{ranking[0][0]}.\n{d['state']}}}).\n"
        #         e_c +=1
        #         for i in range(0, len(ranking)-1):
        #             examples += f"#pos(a{e_c},\n{{}},\n{{}},\n{{{ranking[i+1][0]}.\n{d['state']}}}).\n"
        #             order+= f"#brave_ordering(b{o_c}@3, a{e_c-1}, a{e_c}).\n"
        #             e_c +=1
        #             o_c +=1

        self.examples = examples + order


    def run(self):        
        # Create text file with lp
        with open("tmp.lp", "w") as text_file:
            text_file.write(main_lp + self.create_mode_bias() + self.examples)
        if self.first is None:
            with open("first.lp", "w") as text_file:
                text_file.write(main_lp + self.create_mode_bias() + self.examples)
                first = 1
        # Start bash process that runs ilasp learning
        bashCommand = "ilasp4 --version=4 tmp.lp -q --clingo clingo5"
        process = subprocess.Popen(bashCommand, stdout=subprocess.PIPE, shell=True)
        output, error = process.communicate()
        if error:
            raise Exception(f"ILASP error: {error.decode('utf-8')}")
        
        # Return new lp with learned rules
        if bool(output): #learned rules
            output = output.decode("utf-8")

            if output:
                print(f"NEW RULES LEARNED: {output}")
            if output=="UNSATISFIABLE\n":
                return False
            return output
        print("NO RULES LEARNED")
        return False # No learned rules, will choose random macro
        
        
class Logic:
    def __init__(self, buffer_size = 40):
        self.grounder = Grounder()
        self.ilasp = Ilasp(buffer_size)
        self.clingo = Clingo()
        self.e = 1
        self.e_discount = 8e-3

    def update_examples(self, traces):
        self.ilasp.generate_examples(traces)

    def update_learned_lp(self):
        rules_learned = self.ilasp.run()
        if rules_learned:
            self.clingo.learned_lp = rules_learned

    def run(self, macro_step, state, choice='random'):
        # Ground state into high level observable predicates
        observables = self.grounder.run(macro_step, state)
        if choice == 'ilasp':
            action = self.clingo.run(observables, random=False)
        elif choice == 'random':
            action = self.clingo.run(observables, random=True)
        elif choice == 'test':
            action = self.clingo.run(observables, random=False, test=True)

        else:
            raise Exception("Modality not recognised")
        
        if not action:
            action = self.clingo.run(observables, random=True)
        return action, observables
