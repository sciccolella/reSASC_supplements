import re
import numpy as np
import pandas as pd
from math import log

def get_ll_from_output(path):
    with open(path, 'r') as fin:
        lines = fin.readlines()
    for line in lines:
        m = re.search(r'"Confidence score: (.+)";', line)
        if m:
            return float(m.group(1))
    return 0

def get_params(logf, m, unig, uniq):
    with open(logf, 'r') as fin:
        lines = fin.readlines()
    
    recs = lines[-1].strip().split()[-1].split(',')
    losses = lines[-2].strip().split()[-1].split(',')
    add_lh = 0.0

    # NOTE: this is hardcoded values
    if unig:
        gs = [1.0 / m for _ in range(m)]
    else:
        gs = [0.113,0.101,0.879,0.896,0.312,0.868,0.456,0.900,0.145,0.100,0.900,0.100,0.897,0.891,0.786,0.362,0.899,0.717,0.893,0.177,0.857,0.892,0.900,0.885,0.900,0.899,0.897,0.106,0.894,0.189,0.101,0.823,0.143,0.895,0.131,0.106,0.412,0.450,0.110,0.100,0.554,0.398,0.100,0.100,0.100,0.100,0.349,0.122,0.104,0.100]
    if uniq:
        qs = [1.0 / m for _ in range(m)]
    else:
        qs = [0.887,0.899,0.859,0.100,0.403,0.102,0.100,0.626,0.104,0.900,0.100,0.323,0.899,0.887,0.100,0.672,0.203,0.899,0.372,0.101,0.102,0.101,0.100,0.859,0.100,0.891,0.100,0.100,0.101,0.746,0.523,0.899,0.101,0.893,0.179,0.894,0.316,0.900,0.100,0.100,0.240,0.291,0.101,0.100,0.100,0.698,0.200,0.750,0.624,0.892]
    

    if not losses == ['None']:
        for l in losses:
            add_lh += log(gs[int(l)-1])
    if not recs == ['None']:
        for r in recs:
            add_lh += log(qs[int(r)-1])

    a = lines[4].split(':')[-1].strip()
    b = float(lines[5].split(':')[-1].strip())

    if ',' in a:
        a = list(map(float, a.split(',')))
    else:
        a = [float(a) for _ in range(m)]

    return a, b, add_lh
        


def get_ll_from_ground(g_file, tm, nm, *args):
    g_log = g_file.replace('truetree.gv', 'log.txt')

    alpha, beta, lh = get_params(g_log, tm.shape[1], *args)
    like_00 = log(1 - beta)
    like_10 = log(beta)
    like_01 = list(map(log, alpha))
    like_11 = list(map(lambda x: log(1 -x), alpha))
    like_2 = 0.0

    # lh = 0.0

    for i in range(tm.shape[0]):
        for j in range(tm.shape[1]):
            if (nm[i][j] == 0 and tm[i,j] == 0):
                p = like_00
            elif (nm[i][j] == 0 and tm[i,j] == 1):
                p = like_01[j]
            elif (nm[i][j] == 1 and tm[i,j] == 0):
                p = like_10
            elif (nm[i][j] == 1 and tm[i,j] == 1):
                p = like_11[j]
            elif (nm[i][j] == 2):
                p = like_2
            
            lh += p

    return lh

def ll(ground_files, true_mat, noisy_mat, tools_files, tool_names, exp, outdir):
    grounds = list()
    unig = True
    uniq = True
    if exp in ['exp5']:
        unig = False
    if exp in ['exp3', 'exp4', 'exp5']:
        uniq = False

    for ix, _ in enumerate(true_mat):
        grounds.append(
            get_ll_from_ground(ground_files[ix], true_mat[ix], noisy_mat[ix], unig, uniq)
        )
    

    tools = [[] for _ in enumerate(tools_files)]

    for t_ix, t_files in enumerate(tools_files):
        for f in t_files:
            s = get_ll_from_output(f)
            tools[t_ix].append(
                s
            )

    lh_np = np.zeros((len(grounds), len(tools)+1))

    # jacc = np.zeros((len(ground_files), len(tools_files)))
    for sim_ix, _ in enumerate(grounds):
        lh_np[sim_ix][0] = grounds[sim_ix]
    for tool_ix, _ in enumerate(tools):
        for sim_ix, _ in enumerate(grounds):
            lh_np[sim_ix][tool_ix+1] = tools[tool_ix][sim_ix]

    for idx, name in enumerate(['Ground']+tool_names):
        print("%s -- Log-Likelihood: %f" %
            (name, np.mean(lh_np[idx]))
        )
    print('-'*40)

    # # ---------------- Compile Pandas

    df = pd.DataFrame(lh_np, columns=['Ground']+tool_names).assign(Measure='Log-Likelihood')
    df.to_csv(f'{outdir}/{exp}.loglikelihood.csv', index=False)
    
    

if __name__ == '__main__':
    import sys
    get_ll_from_ground(sys.argv[1])
