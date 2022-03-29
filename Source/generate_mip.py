from skimage import io
import numpy as np
import napari
import matplotlib.pyplot as plt
import sys

data_path = sys.argv[0]
DEBUG = sys.argv[1]

print('Generating MIP Image...')
dir = data_path.split()[0] + '/original_image/*.jpg'
im_collection = io.imread_collection(dir)
im_3d = im_collection.concatenate()

im_max = np.max(im_3d, axis=0)
plt.imsave('mip.png', im_max, cmap='gray')

if DEBUG == 'True':
    print('Intializing 3D rendering w/ napari...')
    # viewer = napari.Viewer()
    viewer = napari.view_image(im_3d, name = 'tree')
    viewer.dims.ndisplay = 3
    viewer.camera.zoom = 2
    viewer.axes.visible = True
    napari.run()