from collections import namedtuple as nt
from random import randrange, choice, choices
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
    agent_p = vector(randrange(2,38),0, randrange(1,3))

    if counter>20:
        if choices([True, False], weights=[0.5,0.5])[0]:
            return alternate()


    if counter < 20:
        goal_z = agent_p.z+8
        goal_x = agent_p.x + randrange(-3,3)
        red_start = goal_z + 10
        red_end = goal_z + 30
        red_wide = 5
        num_red = 3
    elif counter < 100:
        goal_z = randrange(15,20)
        goal_x = randrange(2,38)
        red_start = agent_p.z + 6
        red_end = goal_z - 6
        red_wide = 8
        num_red = 3
    elif counter < 200:
        goal_z = randrange(25,30)
        goal_x = randrange(2,38)
        red_start = agent_p.z + 8
        red_end = goal_z - 8
        red_wide = 11
        num_red = 4
    else:
        goal_z = randrange(35,36)
        goal_x = randrange(2,38)
        red_start = agent_p.z + 9
        red_end = goal_z - 9
        red_wide = 15
        num_red = 5

    goodgoal_p = vector(goal_x, 0, goal_z)
    goal_s = randrange(1, 5)
    goodgoal_s = vector(goal_s,goal_s,goal_s)     
    agent_rot = round(math.degrees(math.atan2(agent_p.x - goal_x, agent_p.z-goal_z)) +180)
    agent_rot += randrange(-15, 15)
    base = """
!ArenaConfig
arenas:
  -1: !Arena
    pass_mark: 1
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

    for _ in range(num_red):
        inp = {
            "name": choice(["DeathZone","BadGoal"]),
            "pos": vector(randrange(5, 35), 0, randrange(red_start, red_end)),
        }
        if inp['name'] == "DeathZone":
            inp['size'] = vector(red_wide,0, randrange(2,4))
        else: # Badgoal
            s = randrange(2,6)
            inp['size'] = vector(s,s,s)
        base+=make_obj(**inp)
    return [base]

def alternate():
    # agent_p = vector(randrange(1,39), 0 , randrange(1,39), randrange(1,39))
    agent_p = vector(randrange(2,38),0, randrange(1,3))
    goodgoal_p = vector(randrange(3,37), 0, randrange(35,37))
    goal_s = randrange(1, 5)
    goodgoal_s = vector(goal_s,goal_s,goal_s)     
    agent_rot = round(math.degrees(math.atan2(agent_p.x - goodgoal_p.x, agent_p.z-goodgoal_p.z)) +180)
    agent_rot += randrange(-20, 20)
    base = """
!ArenaConfig
arenas:
  -1: !Arena
    pass_mark: 1
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

    for c in range(4):
        inp = {
            "name": "DeathZone",
            "pos": vector(5+c*10, 0, 20),
            "size":vector(randrange(5,10),0, randrange(10,30))
        }

        base+=make_obj(**inp)
    return [base]
