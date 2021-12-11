# -*- coding: utf-8 -*-
"""
Created on Sat Dec 11 12:03:19 2021

@author: Zoyo
"""
import base64

import imageio
import numpy as np
import cv2


# def imageRead(imgname, pilmode='L', arrtype=np.float64):
#     return imageio.imread(imgname, pilmode=pilmode).astype(arrtype)

def cv2_base64(image):
    base64_str = cv2.imencode('.png', image)[1].tostring()
    base64_str = base64.b64encode(base64_str)
    return base64_str


def file_base64(file):
    image = cv2.imread(file)
    image = cv2.resize(image, (512, 512), interpolation=cv2.INTER_NEAREST)
    a, b = image.shape[:2]
    Alpha = np.ones((a, b, 1)) * 255
    img_bgra = np.c_[image, Alpha]
    b, g, r, alpha = cv2.split(img_bgra)
    mask = ((b == 0) * (g == 0) * (r == 0))
    alpha[mask] = 0
    img = cv2.merge((b, g, r, alpha))
    img_big = cv2.resize(img, (128, 128))
    img_small = cv2.resize(img, (64, 64))
    base64_large = str(cv2_base64(img_big), 'utf-8')
    base64_small = str(cv2_base64(img_small), 'utf-8')
    img_dict = {'smallIcon': base64_small, 'largeIcon': base64_large}
    return img_dict


def imageWrite(arrF, imgname, arrtype=np.uint8):
    imageio.imwrite(imgname, arrF.astype(arrtype))


def shapeCheck(img):
    """

    Parameters
    ----------
    img : matrix
        Picture read

    Returns
    -------
    bool
        Determine whether the picture is square

    """
    a, b = img.shape[:2]
    if a == b:
        return True

    print('The length and width of the picture should be equal')
    return False


def blockImage(img_top, img_left, img_right):
    img_top = cv2.imread(img_top, flags=-1)
    img_left = cv2.imread(img_left, flags=-1)
    img_right = cv2.imread(img_right, flags=-1)
    img_top = cv2.resize(img_top, (512, 512), interpolation=cv2.INTER_NEAREST)
    img_right = cv2.resize(img_right, (512, 512), interpolation=cv2.INTER_NEAREST)
    img_left = cv2.resize(img_left, (512, 512), interpolation=cv2.INTER_NEAREST)

    # Get width and length
    top_shape, empty = img_top.shape[:2]
    left_shape, empty = img_left.shape[:2]
    right_shape, empty = img_right.shape[:2]

    # Source coordinates
    # LT, RT, LB, RB
    ori_top = np.float32([[0, 0], [top_shape, 0], [0, top_shape], [top_shape, top_shape]])
    ori_left = np.float32([[0, 0], [left_shape, 0], [0, left_shape], [left_shape, left_shape]])
    ori_right = np.float32([[0, 0], [right_shape, 0], [0, right_shape], [right_shape, right_shape]])

    # Transformed coordinates
    # LT, RT, LB, RB
    trans_top = np.float32([[221, 0], [442, 128], [0, 128], [221, 256]])
    trans_left = np.float32([[0, 128], [221, 256], [0, 384], [221, 512]])
    trans_right = np.float32([[221, 256], [442, 128], [221, 512], [442, 384]])

    # PerspectiveTransform
    T = cv2.getPerspectiveTransform(ori_top, trans_top)
    L = cv2.getPerspectiveTransform(ori_left, trans_left)
    R = cv2.getPerspectiveTransform(ori_right, trans_right)

    dst = cv2.warpPerspective(img_top, T, (442, 512))
    dsl = cv2.warpPerspective(img_left, L, (442, 512))
    dsr = cv2.warpPerspective(img_right, R, (442, 512))

    # pic combination
    img0 = np.add(dst, dsl)
    img = np.add(img0, dsr)

    # cv2.imshow("final", img1)
    a, b = img.shape[:2]
    Alpha = np.ones((a, b, 1)) * 255
    img_bgra = np.c_[img, Alpha]
    b, g, r, alpha = cv2.split(img_bgra)
    mask = ((b == 0) * (g == 0) * (r == 0))
    alpha[mask] = 0
    img = cv2.merge((b, g, r, alpha))

    img_big = cv2.resize(img, (110, 128))
    img_small = cv2.resize(img, (55, 64))
    base64_large = str(cv2_base64(img_big), 'utf-8')
    base64_small = str(cv2_base64(img_small), 'utf-8')
    img_dict = {'smallIcon': base64_small, 'largeIcon': base64_large}
    # plt.imshow(img / 255)
    # plt.xticks([])
    # plt.yticks([])
    # plt.show()
    return img_dict
