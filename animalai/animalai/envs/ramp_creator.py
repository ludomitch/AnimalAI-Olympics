from collections import namedtuple as nt
from random import randrange, choice
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
      - !RGB {r: 0, g: 0, b: 255}"""
    if name == 'Wall':
        res += """
      colors:
      - !RGB {r: 255, g: 0, b: 0}"""
    return res


def run():
    vector = nt('vec', ['x', 'y', 'z'])
    # agent_p = vector(randrange(1,39), 0 , randrange(1,39), randrange(1,39))
    ramp_p = vector(randrange(10,30),0, randrange(10,30))
    ramp_width = randrange(2,ramp_p.x)
    ramp_length = randrange(2,ramp_p.z)
    ramp_height = randrange(2,max(int(ramp_length*(3/5)),3))
    ramp_s = vector(ramp_width, ramp_height, ramp_length)
    rot = 180


    wall_p = vector(ramp_p.x, 0, 1.5 + ramp_p.z+ramp_s.z/2)
    wall_s = vector(ramp_width, ramp_s.y, 3)
    goodgoal_p = vector(wall_p.x, 7, wall_p.z)
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
    
    agent_rot = round(math.degrees(math.atan2(agent_x -ramp_p.x, agent_z-ramp_p.z)) +180)
    agent_p = vector(agent_x, 0, agent_z)
    base = """
!ArenaConfig
arenas:
  0: !Arena
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

    for i in range(int(ramp_width/2)):
        inp = {
            "name": "GoodGoal",
            "pos": vector(wall_p.x-wall_s.x/2+1+2*i, 7, wall_p.z),
            "size": vector(2,2,2)
        }
        base+=make_obj(**inp)
    print(base)
    return [base]
