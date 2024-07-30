from loader import load_from_infscite
import re
import numpy as np
import argparse, os, sys, errno, random

def load_infscite(fpath):
    CELLS = []
    TREE = load_from_infscite(fpath)

    with open(fpath) as f:
        tree = f.readlines()
    gv = tree[2:-1]
    for line in gv:
        line = line.strip()[:-1]

        if '-> s_' in line and not '[color=' in line:
            # print(line)
            m = re.search(r"(?P<node>\d+) -> s_(?P<cell>\d+)", line)
            # print(m.group("node"), m.group("cell"))

            n, c = line.split(' -> ')
            n = int(m.group("node"))
            c = int(m.group("cell"))

            CELLS.append((c, n))

    return (TREE, CELLS)



parser = argparse.ArgumentParser(description='scite parser', add_help=True)
parser.add_argument('-f', '--file', action='store', type=str, required=True,
                    help='path of the result.')
parser.add_argument('-m', '--mut', action='store', type=int, required=True,
                    help='number of mutations')
args = parser.parse_args()

tree, cells = load_infscite(args.file)
SCITE_OUT = []
cells = sorted(cells, key=lambda x: x[0])

used_cells = []
for cell in cells:
    if not cell[0] in used_cells:
        SCITE_OUT.append(tree.get_genotype_profile(cell[1], args.mut))
        used_cells.append(cell[0])

np.savetxt(sys.stdout, SCITE_OUT, delimiter=' ', fmt='%d')
