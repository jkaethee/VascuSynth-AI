from matplotlib import image
from skimage import io
import numpy as np
import pyvista as pv
import napari
import matplotlib.pyplot as plt
import sys
import os
from skimage.util import random_noise

def normalize_image(matrix):
    norm = np.linalg.norm(matrix)
    matrix = matrix/norm  # normalized matrix
    return matrix

def add_noise(image, type):
    if type == 'speckle':
        # print(image)
        normalize_image(image)
        mean = 0
        var = 0.05
        noisy=random_noise(image, mode=type, mean=mean, var=var)
        return noisy
    
    return "Noise type is not an acceptable format"

data_path = sys.argv[0]
DEBUG = sys.argv[1]



# print('Generating MIP Image...')
# dir = data_path.split()[0] + '/original_image/*.jpg'
# im_collection = io.imread_collection(dir)
# im_3d = im_collection.concatenate()

# im_max = np.max(im_3d, axis=0)
# plt.imsave('mip.png', im_max, cmap='gray')

# noisy_im = add_noise(im_max, 'speckle')
# plt.imsave('mip_noisy.png', noisy_im, cmap='gray')


if DEBUG == 'True':
    print('Intializing 3D rendering w/ napari...')
    # viewer = napari.Viewer()
    viewer = napari.view_image(im_3d, name = 'tree')
    viewer.dims.ndisplay = 3
    viewer.camera.zoom = 2
    viewer.axes.visible = True
    napari.run()