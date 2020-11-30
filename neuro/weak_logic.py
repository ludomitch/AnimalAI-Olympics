from collections import deque, namedtuple
import random as rnd
import subprocess
import numpy as np

from clyngor import ASP

from utils import get_overlap, get_distance

AnswerSet = namedtuple('AS', ['r', 'p', 'a']) # r for raw, p for parsed, a for arity
parse_args = lambda x: list(list(ASP(x+'.').parse_args)[0])[0]
sample_vars = ["X", "Y", "Z"]
macro_actions = {
    "explore":3,
    "interact":1,
    "rotate":0
}
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
        self.macro_actions_learned = []

    def random_action_grounder(self, macro_step, ground_observables):
        lp = f"""
            {ground_observables}
            present(X):-goal(X).
            present(X):- visible(X).
            initiate(explore(X,Y)):- visible(X), present(Y), X!=Y.
            initiate(interact(X)):-visible(X).
            initiate(rotate)."""
        res = self.asp(lp)
        filtered_mas = [i for i in res.r[0] if (
            'initiate' in i)&(not any(j in i for j in self.macro_actions_learned))]
        rand_action = rnd.choice(filtered_mas)
        # print([i for i in res.r[0] if 'initiate' in i])
        return [[rand_action]]

    @staticmethod
    def asp(lp):
        as1 = list(ASP(lp).atoms_as_string)
        as2 = list(ASP(lp).parse_args)

        return AnswerSet(r=as1, p=as2, a=len(as1))


    def macro_processing(self, answer_set):
        # Look for initiate
        res = {
            'initiate':[],
            'check':[],
            'raw':[]
        }
        if not isinstance(answer_set, list):
            answer_set = answer_set.r
        if len(answer_set)>1:
            # print("More than 1 answer set so stopping at first initiate")
            # print(answer_set)
            _break = True
        else:
            _break = False
        # print(answer_set)
        for ans_set in answer_set:
            for literal in ans_set:
                if 'initiate' in literal:
                    # From initiate(action(args),ts), select action(args)
                    res['initiate'].append(parse_args(literal)[1][0])
                    res['raw'].append(literal)
                    if _break:
                        break


        # No action returned
        if not res['initiate']:
            # print("NO ACTION")
            return False

        # if two actions are returned from program then use random action.
        if len(res['initiate'])>1:
            # print("More than one action")
            # print(res['initiate'])
            res['raw'] = "multi:"+str(res['initiate'])
            res['initiate'] = [rnd.choice(res['initiate'])]
            # return False

        # Add checks for chosen action
        checks = list(ASP(f"""            
            {res['raw'][0]}.
            check(visible, Y):- initiate(explore(X,Y,Z),T).
            check(time, 250):- initiate(explore(X,Y,Z),T).
            check(time, 150):- initiate(interact(X),T).
            check(time, 250):- initiate(avoid_red,T).
            check(time, 50):- initiate(rotate,T).""").atoms_as_string)
        checks = checks[0]
        checks = [parse_args(i)[1] for i in list(checks) if 'check' in i]
        res['check'] = checks
        # print(res)
        return res

    def run(self, macro_step, lp, random=False):
        # Just ground macro actions based on observables
        if random:
            res = self.random_action_grounder(macro_step, lp)
        else: # Run full lp
            # print(lp)
            res = self.asp(lp)
            # print(res)
            # print(lp)
                
        return self.macro_processing(res)

class Ilasp:
    def __init__(self, memory_len=40):
        # Examples are [int:weight, string:example]
        self.memory_len = memory_len
        self.examples = deque(maxlen=self.memory_len)
        self.macro_actions_learned = []

    def create_mode_bias(self):
        return """
#modeo(1, rotate).
#modeo(1, interact(var(X))).
#modeo(1, explore(var(X), var(Y))).
#modeo(1, goal(var(X))).
#modeo(1, visible(var(X))).
#modeo(1, occludes(var(X),var(Y))).
#weight(1).
#weight(-1).
#maxv(4).
#maxp(3).
"""

    def extract_action(self, action):
        res = action.split('initiate(')
        res = res[0].split('(')[0]
        return res
    def expand_trace(self, trace, idf):
        discount_factor = 0.9
        actions, observables, success, len_trace = trace
        success = 10 if success else -10
        examples = []
        values = []
        # actions = []
        for step in range(len_trace):
            examples.append(f"#pos(a{idf+step},\n{{}},\n{{}},\n{{{actions[step]}.\n{observables[step]}}}).\n")
            values.append(success*discount_factor**(len_trace-step-1))
            # actions.apennd(self.extract_action(actions))
        print(values)
        return examples, values, len_trace #, actions
    def generate_examples(self, traces):
        examples = []
        values = []
        # actions = []
        count = 0
        for trace in traces:
            e, v, c = self.expand_trace(trace, count)
            count += c
            examples += e
            values += v
            # actions += a
        
        # Do ordering
        # order = [i for (v, i) in sorted(((v, i) for (i, v) in enumerate(values)),reverse=True)]
        # order = [f"a{i}" for i in order]
        # pairs = [[order[i], order[i+1]] for i in range(0,len(order)-1)]
        # pairs = [f"#brave_ordering(b{c}@1, {', '.join([i[0], i[1]])})." for c,i in enumerate(pairs)]
        # ordering = "\n".join(pairs)
        # examples = "".join(examples) + ordering

        tracker = 0
        d = {k: [] for k in np.unique(values)}
        for c, i in enumerate(values):
            d[i].append(c)
        order = ""
        print(d)
        for k,v in d.items():
            if len(v)<2:
                continue
            order += "\n".join(f"#brave_ordering(b{tracker+i}@1, a{v[i]}, a{v[i+1]}, =)." for i in range(0, len(v)-1)) + "\n\n"
            tracker += len(v)-2
        previous = None
        for k in sorted(d.keys(), reverse=True):
            if previous is None:
                previous =k 
                continue
            order += f"#brave_ordering(b{tracker}@1, a{d[previous][0]}, a{d[k][0]}).\n"
            previous = k
            tracker +=1

        print(order)
        self.examples = "".join(examples) + order


    def run(self, lp):        
        # Create text file with lp
        with open("tmp.lp", "w") as text_file:
            text_file.write(lp+self.create_mode_bias() + self.examples)
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
            for ma in macro_actions:
                if ma in output:
                    self.macro_actions_learned.append(ma)
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
        self.learned_lp = ""

    def macro_kb(self):
        """This is what we want to learn."""
        return """
            0{initiate(explore(X,Y,Z),T)}1:- visible(X,Z,T), occludes(X,Y,T).
            initiate(interact(X),T):- visible(X, _,T), goal(X).
            initiate(rotate,T):- not visible(T), timestep(T)."""
    def main_lp(self):
        return """
present(X):-goal(X).
% Observables rules
present(X):- visible(X, _).
occlusion(Y):- visible(X,Y).
object(X):- visible(X,Y).
occludes(X,Y) :- present(Y), visible(X, _), not visible(Y, _).
"""



    def update_learned_lp(self):
        rules_learned = self.ilasp.run(self.learned_lp)
        if rules_learned:
            self.learned_lp += rules_learned
            # Sync two lists
            self.clingo.macro_actions_learned = self.ilasp.macro_actions_learned

    def update_examples(self, traces):
        self.ilasp.generate_examples(traces)

    def run(self, macro_step, state, choice='random'):
        # Ground state into high level observable predicates
        observables = self.grounder.run(macro_step, state)

        if not self.learned_lp:
            self.learned_lp = self.main_lp()


        if choice == 'ilasp':
            if self.learned_lp:
                action = self.clingo.run(macro_step, self.learned_lp +observables, random=False)
            else:
                action = self.clingo.run(macro_step, observables, random=True)

        elif choice == 'random':
            action = self.clingo.run(macro_step, observables, random=True)
        else:
            raise Exception("Modality not recognised")
        
        if not action:
            # print("No action choosing randomly")
            action = self.clingo.run(macro_step, observables, random=True)
        return action, observables
