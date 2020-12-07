from collections import namedtuple as nt
from random import randrange, choice
import math

vector = nt('vec', ['x', 'y', 'z'])

def make_obj(pos=False, size=False, name=False, rot=False):
    res =  f"""
    - !Item
      name: {name}"""
    if pos:
        res +=f"""
      positions:
      - !Vector3 {{x: {pos.x} , y: {pos.y}, z: {pos.z}}}"""
    if size:
        res +=f"""
      sizes:
      - !Vector3 {{x: {size.x}, y: {size.y}, z: {size.z}}}"""
    if rot:
        res += f"""
      rotations: [{rot}]"""
    if name == 'Ramp':
        res += """
      colors:
      - !RGB {r: 0, g: 0, b: 255}"""
    if name == 'Wall':
        res += """
      colors:
      - !RGB {r: 255, g: 0, b: 0}"""
    return res


def run(counter):
    # agent_p = vector(randrange(1,39), 0 , randrange(1,39), randrange(1,39))
    agent_p = vector(randrange(2,38),0, randrange(1,5))

    if counter < 5:
        goal_z = agent_p.z+5
        goal_x = agent_p.x + randrange(-3,3)
    else:
        goal_z = randrange(25,36)
        goal_x = randrange(4,36)

    goodgoal_p = vector(goal_x, 0, goal_z)
    goal_s = randrange(1, 5)
    goodgoal_s = vector(goal_s,goal_s,goal_s)     
    agent_rot = round(math.degrees(math.atan2(agent_p.x - goal_x, agent_p.z-goal_z)) +180)
    agent_rot += randrange(-25, 25)
    base = """
!ArenaConfig
arenas:
  -1: !Arena
    pass_mark: 2
    t: 250
    items:"""
    for obj in ['Agent', 'GoodGoal']:
        inp = {"name":obj}
        if obj.lower()+'_p' in locals():
            inp['pos'] = locals()[obj.lower()+'_p']
        if obj.lower()+'_s' in locals():
            inp['size'] = locals()[obj.lower()+'_s']
        if obj in ['Agent']:
            inp['rot'] = agent_rot
        base+=make_obj(**inp)

    return [base]
