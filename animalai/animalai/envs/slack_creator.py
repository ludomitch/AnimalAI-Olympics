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
    if not isinstance(rot, bool):
        res += f"""
      rotations: [{rot}]"""
    if name == 'Wall':
        res += """
      colors:
      - !RGB {r: 0, g: 0, b: 255}"""
    # if name == 'Wall':
    #     res += """
    #   colors:
    #   - !RGB {r: 255, g: 0, b: 0}"""
    return res


def run(counter):
    wall_p = vector(choice([10,30]), 0, 20)
    if counter < 5:
        num_turns = 0
        wall_width = 8
        wall_len = randrange(8,15)
    elif counter < 15:
        num_turns = 1
        wall_width = randrange(5,10)
        wall_len = randrange(8,25)

    else:
        num_turns = 2
        wall_width = randrange(1,5)
        wall_len = randrange(8,35)

    wall_s = vector(wall_width, 5, wall_len)

    deathzone_p = vector(20,0,20)
    deathzone_s = vector(40,0,40)

    base = """
!ArenaConfig
arenas:
  -1: !Arena
    pass_mark: 2
    t: 50
    items:"""
    pos = wall_p
    goal_x = pos.x
    goal_z = pos.z + wall_s.z/2.5
    for c in range(num_turns):
        if c==0: # horiz
            rot = 180
            wall_len = min(wall_len, (min(40-pos.x, pos.x)-4)*2)
            size = vector(wall_len,5,wall_width)
            if wall_p.x >20: # going left
                left = -1
                pos = vector(pos.x-size.x/2, 0, pos.z+wall_s.z/2 + size.z/2)
                goal_x = pos.x - size.x/2+2
                goal_z = pos.z
            else: # Going right
                left = +1
                pos = vector(pos.x+size.x/2, 0, pos.z+wall_s.z/2 + size.z/2)
                goal_x = pos.x + size.x/2-2
                goal_z = pos.z
        else: # vertical
            rot = 0
            wall_len = max(wall_len, min(40-pos.z, pos.z)-4*2)
            size = vector(wall_width,5,wall_len)
            if pos.z > 20: # going down
                pos = vector(pos.x + left*prev_size.x/2-left*2, 0, pos.z - prev_size.z/2-size.z/2)
                goal_x = pos.x
                goal_z = pos.z - size.z/2+2
            else: # going up
                pos = vector(pos.x + left*prev_size.x/2-left*2, 0, pos.z + prev_size.z/2+size.z/2)
                goal_x = pos.x
                goal_z = pos.z + size.z/2-2
        inp = {
            "name": "Wall",
            "pos": pos,
            "size": size,
            "rot": rot
        }

        wall_len = inp['size'].x
        pos = inp['pos']
        prev_size = inp['size']
        base+=make_obj(**inp)
    goodgoal_p = vector(goal_x, 5, goal_z)
    goal_s = randrange(1, 5)
    goodgoal_s = vector(goal_s,goal_s,goal_s)     
    agent_p = vector(wall_p.x,5, wall_p.z)
    agent_rot = round(math.degrees(math.atan2(agent_p.x - goal_x, agent_p.z-goal_z)) +180)
    for obj in ['Agent', 'Wall', "GoodGoal"]:
        inp = {"name":obj}
        if obj.lower()+'_p' in locals():
            inp['pos'] = locals()[obj.lower()+'_p']
        if obj.lower()+'_s' in locals():
            inp['size'] = locals()[obj.lower()+'_s']
        if obj in ['Agent']:
            inp['rot'] = agent_rot
        if obj in ['Wall']:
            inp['rot'] = 0
        base+=make_obj(**inp)
    return [base]