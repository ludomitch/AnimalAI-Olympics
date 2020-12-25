import numpy as np

from animalai.envs.cvis import ExtractFeatures
from mlagents.tf_utils import tf
import matplotlib.pyplot as plt

tf.compat.v1.logging.set_verbosity(tf.compat.v1.logging.ERROR)

object_types = {
    'goal':0, 'wall':10, 'platform':20, 'goal1':30,'lava':40, 'ramp':50
}

macro_actions = {
    "rotate":0, # _
    "observe":0, # _
    "climb":0, # x
    "collect":0, # mask_x
    "interact":1, # x
    "explore":1, # x,y
    "balance":0, # mask_x, y
    "avoid":0, # mask_x, y
    "drop":1
}

bias_observables = {
    # 'present':1,
    # 'adjacent':2,
    # 'moving':1,
    # 'goals':0,
    # 'visible':1,
    # 'wall':1,
    # 'platform':1,
    # 'lava':1,
    # 'ramp':1,
    # 'gvis':0,
    'on':2,
    "occludes":1,
    "occludes_more":2,
    "bigger":2,
    "more_goals":1,
    # "moving":0,
    "danger":0
    # "wall":0,
    # "platform":0,
    # "goal":0,
    # "lava":0,
    # "ramp":0,
    # "goal1":0

}

ctx_observables = [
    'on',
    'occludes',
    'occludes_more',
    'bigger',
    'more_goals',
    # 'moving',
    # 'gvis',
    'danger',

    'wall',
    'goal',
    'platform',
    'lava',
    'ramp',
    'goal1',

   'rotate',
    'observe',
    'drop',
    'interact',
    'climb',
    'explore',
    'balance',
    'avoid',
    'collect'
    ]


ef = ExtractFeatures(display=False, training=False)

def first_steps(env, arena_name):
    if 'moving' in arena_name:
        return env.step([0,0]), True
    return env.step([0,0]), False
    moving = False
    move_count = 0
    obj = ef.run(env.render())
    for i in range(5):
        res = env.step([0,0])
        obj_1 = ef.run(env.render())
        for v,v1 in zip(obj.values(), obj_1.values()):
            if v:
                o = v[0][0][0]* v[0][0][1]
                o1 = v1[0][0][0]* v1[0][0][1]
                if o1!=o:
                    move_count+=1
        obj = obj_1
        if move_count:
            moving = True
            break
    return res, moving

def goal_on_platform(state):
    img = state['visual_obs']
    dim = img.shape[0]
    state = ef.run(img)
    if not state['goal']:
        return None
    goal = state['goal'][0][0]
    under_goal = [goal[0], goal[1]+goal[3], goal[2], goal[3]]
    selector = [dim*(under_goal[0]), dim*(under_goal[1]), dim*under_goal[2], dim*under_goal[3]]
    selector = [int(np.ceil(i)) for i in selector]
    small_img = img[selector[1]:selector[1]+selector[3],selector[0]:selector[0]+selector[2],:]
    res = ef.run(small_img)
    if res['platform']:
        return True
    return False

def load_pb(path_to_pb):
    with tf.gfile.GFile(path_to_pb, "rb") as f:
        graph_def = tf.GraphDef()
        graph_def.ParseFromString(f.read())
    with tf.Graph().as_default() as graph:
        tf.import_graph_def(graph_def, name="")
        return graph

convert = lambda x: [x[0]*84, x[1]*84, (x[0]+x[2])*84, (x[1]+x[3])*84]

def filter_observables(observables:str):
    obs = observables.split('\n')
    res = "\n".join([i for i in obs if any(j in i for j in ctx_observables)&bool(i)])
    return res+'\n'

def process_image(visual_obs:np.array, **args:dict):
    return ef.run(visual_obs, **args)

def preprocess(ct, step_results, step, reward, macro_action=None):
    visual_obs = step_results[3]["batched_step_result"].obs[0][0] # last 0 idx bc batched
    vector_obs = step_results[3]["batched_step_result"].obs[1][0]
    vector_obs = [vector_obs[0]/5.81, vector_obs[1], vector_obs[2]/11.6]
    bboxes = ef.run(visual_obs)
    ids = {k:[] for k in object_types}
    for ot,  ct_i in ct.items():
        converted_boxes = [convert(i[0]) for i in bboxes[ot]]
        ct_i.update(converted_boxes)
        for _id in ct_i.objects:
            if ct_i.disappeared[_id] == 0:
                ids[ot].append(_id + object_types[ot]) # second term is additional 10 to contrast object types

    obj = []
    for k in ids:
        for box, _id in zip(bboxes[k], ids[k]):
            obj.append(
            [box[0], box[1], box[2], _id]
                )

    res = {
        "obj": obj, # list of tuples
        "velocity": vector_obs,  # array
        "reward": step_results[1]+reward,  # float
        "done": step_results[2],  # bool
        "visual_obs": visual_obs
        # "step": step_results[-1],
    }

    # if len(bboxes['wall'])>1:
    #     plt.imshow(visual_obs)
    #     plt.savefig(f"fake_test/{step}.png")

    return res

def convert_dimensions(func):
    def wrapper(*dimensions):
        """Convert from x,y,h,w to x1, x2, y1, y2"""
        # x is top left corner
        res = []

        for dims in dimensions:
            x1, y1 = dims[0], dims[1] #x, y
            x2 = x1 + dims[2] #w
            y2 = y1 + dims[3] #h
            res.append({'x1': x1, 'y1':y1, 'x2':x2, 'y2':y2})


        return func(*res)
    return wrapper



@convert_dimensions
def get_overlap(bb1, bb2):
    """
    Calculate the Intersection over Union (IoU) of two bounding boxes.

    Parameters
    ----------
    bb1 : dict
        Keys: {'x1', 'x2', 'y1', 'y2'}
        The (x1, y1) position is at the top left corner,
        the (x2, y2) position is at the bottom right corner
    bb2 : dict
        Keys: {'x1', 'x2', 'y1', 'y2'}
        The (x, y) position is at the top left corner,
        the (x2, y2) position is at the bottom right corner

    Returns
    -------
    float
        in [0, 1]
    """
    # assert bb1['x1'] < bb1['x2']
    # assert bb1['y1'] < bb1['y2']
    # assert bb2['x1'] < bb2['x2']
    # assert bb2['y1'] < bb2['y2']

    # determine the coordinates of the intersection rectangle
    x_left = max(bb1['x1'], bb2['x1'])
    y_top = max(bb1['y1'], bb2['y1'])
    x_right = min(bb1['x2'], bb2['x2'])
    y_bottom = min(bb1['y2'], bb2['y2'])

    if x_right < x_left or y_bottom < y_top:
        return 0.0

    # The intersection of two axis-aligned bounding boxes is always an
    # axis-aligned bounding box
    intersection_area = (x_right - x_left) * (y_bottom - y_top)

    # compute the area of both AABBs
    bb1_area = (bb1['x2'] - bb1['x1']) * (bb1['y2'] - bb1['y1'])
    bb2_area = (bb2['x2'] - bb2['x1']) * (bb2['y2'] - bb2['y1'])

    # compute the intersection over union by taking the intersection
    # area and dividing it by the sum of prediction + ground-truth
    # areas - the interesection area
    iou = intersection_area / float(bb1_area + bb2_area - intersection_area)
    assert iou >= 0.0
    assert iou <= 1.0
    return iou

@convert_dimensions
def get_distance(dims1, dims2):
    """Get shortest distance between two rectangles"""

    x1, y1, x1b, y1b = dims1.values()
    x2, y2, x2b, y2b = dims2.values()
    left = x2b < x1
    right = x1b < x2
    bottom = y2b < y1
    top = y1b < y2
    dist = lambda x,y: np.linalg.norm(np.array(x)-np.array(y))
    if top and left:
        return dist((x1, y1b), (x2b, y2))
    elif left and bottom:
        return dist((x1, y1), (x2b, y2b))
    elif bottom and right:
        return dist((x1b, y1), (x2, y2b))
    elif right and top:
        return dist((x1b, y1b), (x2, y2))
    elif left:
        return x1 - x2b
    elif right:
        return x2 - x1b
    elif bottom:
        return y1 - y2b
    elif top:
        return y2 - y1b
    else:             # rectangles intersect
        return 0.
