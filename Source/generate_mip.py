from skimage import io
import numpy as np
import matplotlib.pyplot as plt
import sys

data = sys.argv[0]
dir = data.split()[0] + '/original_image/*.jpg'
im_collection = io.imread_collection(dir)
im_3d = im_collection.concatenate()

im_max = np.max(im_3d, axis=0)
plt.imsave('mip.png', im_max, cmap='gray')

    