import sys
import numpy as np

in_mat = np.loadtxt(sys.argv[1], dtype=int)
out_mat = in_mat.transpose()
out_mat[out_mat == 2] = 3
print(out_mat.shape, file=sys.stderr)
np.savetxt(sys.stdout, out_mat, fmt='%d', delimiter=' ')
