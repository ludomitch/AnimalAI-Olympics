from collections import deque, namedtuple
import random as rnd
import subprocess

import numpy as np
from clyngor import ASP

from utils import get_overlap, get_distance

AnswerSet = namedtuple('AS', ['r', 'p', 'a']) # r for raw, p for parsed, a for arity
parse_args = lambda x: list(list(ASP(x+'.').parse_args)[0])[0]

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
    'platform'
}

class Grounder:
    def __init__(self):
        pass
    @staticmethod
    def adjacent(macro_step,state):
        adjacent = ""
        for bbox, _, _, _id in state['obj']:
            for bbox1, _, _, _id1 in state['obj']:
                dist = get_distance(bbox, bbox1)
                if (_id1!=_id)&(dist<0.02):
                    adjacent += f"adjacent({_id},{_id1}, {macro_step}).\n"
        return adjacent
    @staticmethod
    def on(macro_step,state):
        on = ""
        bottom_rect = [0, 0.75, 1, 0.25]
        for bbox, _, _, _id in state['obj']:
            if get_overlap(bbox, bottom_rect)>0.5:
                on += f"on(agent,{_id},{macro_step}).\n"
        return on

    @staticmethod
    def visible(macro_step,state):
        visible = ""
        for _, obj_type, _occ_area, _id in state['obj']:
            visible += f"visible({_id},{_occ_area},{macro_step}).\n"
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

class Ilasp:
    def __init__(self):
        # Examples are [int:weight, string:example]
        self.memory_len = 100
        self.examples = deque(maxlen=self.memory_len)
    def create_modeh(self):
        res = ""
        for name, num_preds in macro_actions.items():
            if num_preds:
                variables = "("
                for i in range(num_preds):
                    variables+=f"var(V{i}),"
                variables = variables[:-1] + ')' # get rid of last comma
            else:
                variables = ""
            res += f"#modeh(1, initiate({name}{variables},var(T))).\n"

        return res + "#maxv(4).\n"

    def create_modeb(self):
        return """
        #modeb(1, goal(var(X))).
        #modeb(1, visible(var(X), var(Z), var(T))).
        #modeb(1, visible(var(T))).
        #modeb(1, occludes(var(X),var(Y), var(T))).
        #modeb(1, timestep(var(T))).
        """
    def update_examples(self, observables, actions, success):
        observables = '\n'.join(observables)
        actions = ','.join(actions)
        if success:
            example = f"#pos(a{self.memory_len}@{self.memory_len},{{{actions}}}, {{}}, {{{observables}}})."
        else:
            example = f"#pos(a{self.memory_len}@{self.memory_len},{{}}, {{{actions}}}, {{{observables}}})."
        self.examples.append([self.memory_len, example])
        for c, eg in enumerate(self.examples):
            at_index = eg[1].index(',') # first comma
            updated_eg = eg[1][:6] + f"{c+1}@{c+1}," + eg[1][at_index+1:] #c+1 because don't want to start at 0
            self.examples[c] = [c+1, updated_eg]

    def write_examples(self):
        res = ""
        for eg in self.examples:
            res+= eg[1] + '\n'
        return res
    def run(self, lp):        
        # Create text file with lp
        with open("tmp.lp", "w") as text_file:
            text_file.write(lp+self.create_modeh()+self.create_modeb() + self.write_examples())
        # Start bash process that runs ilasp learning
        bashCommand = "ilasp --version=2i tmp.lp -q"
        process = subprocess.Popen(bashCommand, stdout=subprocess.PIPE, shell=True)
        output, error = process.communicate()
        if error:
            print("ILASP error: {erorr.decode('utf-8')}")
        
        # Return new lp with learned rules
        if bool(output): #learned rules
            print(output)
            output = output.decode("utf-8")
            if output=="UNSATISFIABLE\n":
                return False
            with open("lr.txt", "w") as text_file:
                text_file.write(output)
            lp+= '\n' + output
            return lp
        return False # No learned rules, will choose random macro
        
        
class Clingo:
    def __init__(self):
        pass

    def random_action_grounder(self, macro_step, ground_observables):
        lp = f"""
            {ground_observables}
            present(X,T):- visible(X, _, T).
            object(X,T):-present(X,T).
            occlusion(O):-visible(_,O,_).
            initiate(explore(X,Y,O),T):-object(X), object(Y,T), occlusion(O).
            initiate(interact(X),T):-object(X,T).
            initiate(rotate,{macro_step}).
            """
        res = self.asp(lp)
        rand_action = rnd.choice([i for i in res.r[0] if 'initiate' in i])

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
        for ans_set in answer_set:
            for literal in ans_set:
                if 'initiate' in literal:
                    # From initiate(action(args),ts), select action(args)
                    res['initiate'].append(parse_args(literal)[1][0])
                    res['raw'].append(literal)
                    break # Stop at first initiate
                # if 'check' in literal:
                #     res['check'].append(parse_args(literal)[1])

        # Add checks
        checks = list(ASP(f"""            
            {res['raw'][0]}.
            check(visible(Y),T):- initiate(explore(X,Y,Z),T).
            check(time, 200):- initiate(explore(X,Y,Z),T).
            check(time, 200):- initiate(interact(X),T).
            check(time, 50):- initiate(rotate,T).""").atoms_as_string)[0]
        checks = [parse_args(i)[1] for i in list(checks) if 'check' in i]
        res['check'] = checks
        print(res)
        return res

    def run(self, macro_step, lp, random=False):
        # Just ground macro actions based on observables
        if random:
            res = self.random_action_grounder(macro_step, lp)
        else: # Run full lp
            res = self.asp(lp)
                
        return self.macro_processing(res)

class Logic:
    def __init__(self):
        self.grounder = Grounder()
        self.ilasp = Ilasp()
        self.clingo = Clingo()
        self.e = 1
        self.e_discount = 5e-2

    def macro_kb(self):
        """This is what we want to learn."""
        return """
            0{initiate(explore(X,Y,Z),T)}1:- visible(X,Z,T), occludes(X,Y,T).
            initiate(interact(X),T):- visible(X, _,T), goal(X).
            initiate(rotate,T):- not visible(T), timestep(T).
        """
    def main_lp(self, macro_step):
        return f"""
            timestep(0..{macro_step}).
            % Observables rules
            present(X,T):- visible(X, _, T).
            visible(T):- visible(X, _, T).
            not_occluding(X, T):-on(agent, X, T).
            separator(Y, T):-on(agent, X, T), adjacent(X, Y, T), platform(X).
            occludes(X,Y,T) :- present(Y, T), visible(X, _, T), not visible(Y, _, T), not separator(X, T), not not_occluding(X, T).

            % Observables - > actions: this is what we need to learn
            :- initiate(explore(X1,Y,_), T), initiate(explore(X2,Y,_), T), X1 != X2.
            :~initiate(explore(X,Y,Z),T).[Z@1,X,Z]
            
            % Completion checks checks
            check(visible(Y),T):- initiate(explore(X,Y,Z),T).
            check(time, T):- initiate(explore(X,Y,Z),T).
            check(time, T):- initiate(interact(X),T).
            check(time, T):- initiate(rotate,T).
            """
    def e_greedy(self):
        # Don't start egreedy until there's at least one positive example with inclusion
        res = np.random.choice(['ilasp', 'random'], 1, p=[1-self.e, self.e])
        self.e = max(0.05, self.e - self.e_discount)
        print(f"E greedy = {self.e} and choice= {res}")
        return res

    def update_examples(self, observables, actions, success):
        self.ilasp.update_examples(observables, actions, success)
    def run(self, macro_step, state):        
        # Ground state into high level observable predicates
        observables = self.grounder.run(macro_step, state)
        # E greedy decide to do random or ilasp
        choice = self.e_greedy()
        if choice == 'ilasp':
            learned_lp = self.ilasp.run(self.main_lp(macro_step))
            if learned_lp:
                action = self.clingo.run(macro_step, learned_lp, random=False)
            else:
                action = self.clingo.run(macro_step, observables, random=True)
            # Need to update ilasp examples with outcome
        elif choice == 'random':
            action = self.clingo.run(macro_step, observables, random=True)
        else:
            raise Exception("Modality not recognised")
        
        if not action['initiate']:
            action = self.clingo.run(macro_step, observables, random=True)
        return action, observables
