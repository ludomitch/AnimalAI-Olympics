from collections import namedtuple as nt
from random import randrange, choice, choices
import math

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
      - !RGB {r: 255, g: 0, b: 255}"""
    if name == 'Wall':
        res += """
      colors:
      - !RGB {r: 255, g: 0, b: 0}"""
    return res


def run(counter):
    vector = nt('vec', ['x', 'y', 'z'])
    # agent_p = vector(randrange(1,39), 0 , randrange(1,39), randrange(1,39))
    ramp_p = vector(randrange(10,30),0, randrange(10,30))
    ramp_length_upper_limit = (min(40-ramp_p.z, ramp_p.z)-4)*2
    ramp_width_upper_limit = (min(40-ramp_p.x, ramp_p.x)-4)*2
    if choices([True, False], weights = [0.7, 0.3])[0]:
        ramp_size = randrange(3,5)
        ramp_width = ramp_size
        ramp_length = ramp_size
    else:
        ramp_width = randrange(2,ramp_width_upper_limit)
        ramp_length = randrange(2,ramp_length_upper_limit)
    ramp_height = randrange(1,int(ramp_length*(3/5))*2)*0.5
    ramp_s = vector(ramp_width, ramp_height, ramp_length)
    rot = 180


    wall_p = vector(ramp_p.x, 0, 1.5 + ramp_p.z+ramp_s.z/2)
    wall_s = vector(ramp_width, ramp_s.y, 3)
    goodgoal_p = vector(wall_p.x, ramp_height+1, wall_p.z+3)
    goodgoal_s = vector(3,3,3)
    agent_limit_x = [max(int(wall_p.x-wall_s.x/2),1), min(int(wall_p.x+wall_s.x/2),37)]
    agent_limit_z = [max(int(wall_p.z-wall_s.z/2),1), min(int(wall_p.z+wall_s.z/2),37)]

    agent_x = choice([
        randrange(1,agent_limit_x[0]-1),
        randrange(agent_limit_x[1]+1, 39)
        ])
    agent_z = choice([
        randrange(1,agent_limit_z[0]-1),
        randrange(agent_limit_z[1]+1, 39)
        ])

    if counter < 20:
        agent_z = 1
        agent_x = ramp_p.x + randrange(-9,9)
        
    agent_rot = round(math.degrees(math.atan2(agent_x -ramp_p.x, agent_z-ramp_p.z)) +180)
    agent_p = vector(agent_x, 0, agent_z)
    base = """
!ArenaConfig
arenas:
  -1: !Arena
    pass_mark: 2
    t: 250
    items:"""
    for obj in ['Agent', 'Ramp', 'Wall']:
        inp = {"name":obj}
        if obj.lower()+'_p' in locals():
            inp['pos'] = locals()[obj.lower()+'_p']
        if obj.lower()+'_s' in locals():
            inp['size'] = locals()[obj.lower()+'_s']
        if obj not in ['Agent','GoodGoal']:
            inp['rot'] = rot
        if obj in ['Agent']:
            inp['rot'] = agent_rot
        base+=make_obj(**inp)

    if ramp_width==2:
        goal_i = range(2)
        offset = 0
    elif ramp_width == 3:
        goal_i = range(3)
        offset = 0 
    else:
        goal_i = range(int(ramp_width))
        offset = 1

    for i in goal_i:
        inp = {
            "name": "GoodGoal",
            "pos": vector(wall_p.x-wall_s.x/2+0.5+1*i, ramp_height+1, wall_p.z),
            "size": vector(1,1,1)
        }
        base+=make_obj(**inp)
    return [base]
