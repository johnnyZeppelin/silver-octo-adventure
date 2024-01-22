import numpy as np
import cv2
import matplotlib.pyplot as plt
import torch


def affinity_matrix(img):
    # the image should be in grey scale
    img_shape = img.shape
    h = img_shape[0]
    w = img_shape[1]
    # center point position is (x0, y0)
    x0 = int(w / 2)
    y0 = int(h / 2)
    # the distance maximum between
    z_max = np.sqrt(((h - 1) / 2) ** 2 + ((w - 1) / 2) ** 2)
    x = np.arange(0, w, 1)  # x columns per 1 unit on x-axis in horizontal direction
    y = np.arange(0, h, 1)  # y rows per 1 unit on y-axis in vertical direction
    xx, yy = np.meshgrid(x, y, sparse=True)  # get each grid unit in the meshgrid
    z = np.sqrt((xx - x0) ** 2 + (yy - y0) ** 2)  # distance between the o and xx,yy
    # Affinity matrix
    a = 1 - (z / z_max)
    a = torch.from_numpy(a).float()
    return a


# overall fixed sized image
view_img_path = './ha/Nud_GCN/Database/OriginalViewport/I1.png'
view_img = cv2.imread(view_img_path)
padding = 80
view_img = cv2.copyMakeBorder(view_img, 0, 0, padding, padding, cv2.BORDER_CONSTANT)
a = affinity_matrix(view_img)
