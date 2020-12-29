## CVIS for training with img
from collections import OrderedDict as OD
import matplotlib.pyplot as plt

import cv2
import numpy as np


class HSV:
    """Color lower and upper bounds in HSV format"""

    @classmethod
    def __getattribute__(cls,attr):
        return [np.array(i) for i in getattr(cls, attr)]

    green = [[33,80,40], [102,255,255]]
    red = [[0,170,183], [2,186,188]]
    grey = [[0,0,0], [0,0,224]]
    orange = [[20,121,158], [23,255,255]]
    brown = [[7,53,40], [18,87,121]]
    blue = [[119, 255, 106], [120, 255, 255]]
    pink = [[149, 117, 107], [165, 255, 255]]

hsv_cls = HSV()
objects = OD()
objects['goal'] =  hsv_cls.green
objects['goal1'] = hsv_cls.orange
objects['lava'] = hsv_cls.red
objects['wall'] = hsv_cls.grey
objects['platform'] = hsv_cls.blue
objects['ramp'] = hsv_cls.pink # TODO change to pink


class ExtractFeatures:
    
    def __init__(self, display=False, training=False):
        self.img = None
        self.hsv_img = None
        self.img_dim = None
        self.display = display
        self.training = training

    def mask_img(self, hsv):
        mask = cv2.inRange(self.hsv_img, hsv[0], hsv[1])
        res = cv2.bitwise_and(self.hsv_img, self.hsv_img, mask=mask)[:,:,2]
        res = res/255
        return res

    def get_contour(self, hsv):
        # Apply mask to get contour
        mask = cv2.inRange(self.hsv_img, hsv[0], hsv[1])
        res = cv2.bitwise_and(self.hsv_img, self.hsv_img, mask=mask)[:,:,2]
        ctr,_ = cv2.findContours(res,cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_NONE)
        if not ctr:
            return None
        return ctr


    def process_contour(self, ctr):
        # Fixed horizontal rectangler
        res = []
        for c in ctr:
            x,y,w,h = cv2.boundingRect(c)
            if self.display:
                cv2.rectangle(self.img,(x,y),(x+w,y+h),(0,255,0),2)
            #     cv2.imwrite("/Users/ludo/Desktop/bam.png", self.img)
            # Normalize bbox to be between 0 and 1
            res.append([
                x/self.img_dim[0], y/self.img_dim[1],
                w/self.img_dim[0], h/self.img_dim[1],
                ])
        return res


    def run_mask(self, mask:str):
        masked_img = self.mask_img(objects[mask]).astype(np.float64)
        return masked_img

    def run_dual(self, box:str, mask:str):
        """Returns bbox of goal and mask for another colour."""

        masked_img = self.mask_img(objects[mask]).astype(np.float64)
        ctr = self.get_contour(objects[box])
        features = []
        if ctr is None:
            features.append([0,0,0,0])
        else:
            coords = self.process_contour(ctr)
            for i in coords:
                features.append(i)

        # Only fetch first bounding box
        features = features[:1]
        features = [item for sublist in features for item in sublist]
        return masked_img, features

    def run_objects(self):
        """Returns list of tuples"""
        features = {ot: [] for ot in objects}
        for obj_type, hsv_clr in objects.items():
            ctr = self.get_contour(hsv_clr)
            if ctr is None:
                features[obj_type] = []
                continue
            coords = self.process_contour(ctr)
            for box in coords:
                occluding_area = round(box[2]*box[3]*100000)
                if (obj_type=='wall'):
                    if (box[2]<0.03)|(occluding_area<60):
                        # print(box, occluding_area)

                        continue
                features[obj_type] += [(box, obj_type, occluding_area)]
        return features

    def run(self, img, mode:str='box', **args):
        if self.training:
            img = np.ascontiguousarray(
                cv2.imdecode(np.frombuffer(img, np.uint8), -1))
        else:
            img = (img*255)[:,:,::-1].astype(np.uint8)

        if self.display:
            cv2.imwrite("/Users/ludo/Desktop/bam.png", img)

        setattr(self, 'img', img)
        setattr(self, 'hsv_img', cv2.cvtColor(self.img, cv2.COLOR_BGR2HSV))
        setattr(self, 'img_dim', img.shape)
        if mode=="dual":
            return self.run_mask(args['mask'])
        elif mode=="mask":
            return self.run_mask(args['mask'])
        elif mode=="box":
            return self.run_objects()
        else:
            raise TypeError("Mode not recognized")



