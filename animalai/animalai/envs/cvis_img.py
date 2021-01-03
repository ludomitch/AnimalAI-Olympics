## CVIS for training with img
from collections import namedtuple as nt
from collections import OrderedDict as OD
import argparse
import matplotlib.pyplot as plt

import cv2
import numpy as np


class HSV:
	"""Color lower and upper bounds in HSV format"""

	@classmethod
	def __getattribute__(cls,attr):
		return [np.array(i) for i in getattr(cls, attr)]

	green = [[33,80,40], [102,255,255]]
	red = [[0,162,142], [179,203,188]]
	grey = [[0,0,0], [0,0,224]]
	orange = [[20,121,158], [23,255,255]]
	brown = [[7,53,40], [18,87,121]]
	blue = [[119, 255, 106], [120, 255, 255]]

hsv_cls = HSV()
objects = OD()
# objects['danger_zone'] = hsv_cls.red
objects['wall'] = hsv_cls.grey
# objects['goal1'] = hsv_cls.orange

# objects['platform'] = hsv_cls.blue
# mask_clr = 'wall'
# box_clr = "platform"

# objects['danger_zone'] = hsv_cls.red
# objects['goal'] =  hsv_cls.green
# mask_clr = 'danger_zone'
box_clr = "wall"

class ExtractFeatures:
	
	def __init__(self, display=False, training=True):
		self.img = None
		self.hsv_img = None
		self.img_dim = None
		self.display = display
		self.training = training

	def mask_img(self, hsv):
		mask = cv2.inRange(self.hsv_img, hsv[0], hsv[1])
		res = cv2.bitwise_and(self.hsv_img, self.hsv_img, mask=mask)[:,:,2]
		return res

	def get_contour(self, hsv):
		# Apply mask to get contour
		mask = cv2.inRange(self.hsv_img, hsv[0], hsv[1])
		res = cv2.bitwise_and(self.hsv_img, self.hsv_img, mask=mask)[:,:,2]
		ctr,hier = cv2.findContours(res,cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_NONE)
		if not ctr:
			return None, hier
		return ctr, hier


	def process_contour(self, ctr, obj):
		# Fixed horizontal rectangler
		res = []
		for c in ctr:
			x,y,w,h = cv2.boundingRect(c)
			if self.display:
				cv2.rectangle(self.img,(x,y),(x+w,y+h),(0,255,0),2)
				cv2.imwrite("/Users/ludo/Desktop/bam.png", self.img)
			# Normalize bbox to be between 0 and 1
			res.append([
				x/self.img_dim[0], y/self.img_dim[1],
				w/self.img_dim[0], h/self.img_dim[1],
				# 0 if obj=='goal' else 1
				])
		return res


	def run_mask(self, img, mode='dual'):
		img = np.ascontiguousarray(
			cv2.imdecode(np.frombuffer(img, np.uint8), -1))
		# plt.imshow(img)
		# img = (img*255)[:,:,::-1].astype(np.uint8)
		setattr(self, 'img', img)
		setattr(self, 'hsv_img', cv2.cvtColor(self.img, cv2.COLOR_BGR2HSV))
		setattr(self, 'img_dim', img.shape)
		masked_img = self.mask_img(objects[mask_clr]).astype(np.float64)
		return masked_img

	def run_dual(self, img, mode='dual'):
		"""Returns bbox of goal and mask for another colour."""
		# print(np.frombuffer(img))
		# print(np.frombuffer(img).dtype)
		img = np.ascontiguousarray(
			cv2.imdecode(np.frombuffer(img, np.uint8), -1))
		# plt.imshow(img)
		# img = (img*255)[:,:,::-1].astype(np.uint8)
		setattr(self, 'img', img)
		setattr(self, 'hsv_img', cv2.cvtColor(self.img, cv2.COLOR_BGR2HSV))
		setattr(self, 'img_dim', img.shape)

		masked_img = self.mask_img(objects[mask_clr]).astype(np.float64)
		# cv2.imwrite("/Users/ludo/Desktop/bam.png", masked_img*255)
		# plt.imshow(masked_img)
		# plt.savefig("/Users/ludo/Desktop/bam.png",bbox_inches='tight',transparent=True, pad_inches=0)
		ctr, hier = self.get_contour(objects[box_clr])
		features = []
		if ctr is None:
			features.append([0,0,0,0])
		else:
			coords = self.process_contour(ctr, box_clr)
			for i in coords:
				features.append(i)

		# Only fetch first bounding box which is goal
		features = features[:1]
		features = [item for sublist in features for item in sublist]
		return masked_img, features

	def run(self, img, mode='normal'):
		if mode=='dual':
			return self.run_dual(img)

		img = np.ascontiguousarray(
			cv2.imdecode(np.frombuffer(img, np.uint8), -1))
		setattr(self, 'img', img)
		setattr(self, 'hsv_img', cv2.cvtColor(self.img, cv2.COLOR_BGR2HSV))
		setattr(self, 'img_dim', img.shape)

		features = []
		for obj, hsv_clr in objects.items():
			ctr, hier = self.get_contour(hsv_clr)
			if ctr is None:
				features.append([0,0,0,0])
				continue
			coords = self.process_contour(ctr, obj)
			for i in coords:
				features.append(i)

		features = features[:1]
		features = [item for sublist in features for item in sublist]
		return features

