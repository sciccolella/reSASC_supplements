import re
import numpy as np
import pandas as pd

def get_set_from_log(path):
    with open(path, 'r') as fin:
        lines = fin.readlines()
    recs = lines[-2].strip().split()[-1].split(',')
    return set(recs)

def get_set_from_tree(path):
    losses = []
    with open(path, 'r') as fin:
        for line in fin:
            line = line.strip()
            if 'label' in line and not 'germline' in line and not 'score' in line:
                m = re.search(r'\[color=indianred1, style=filled, label="(.+)"\];', line)
                if m:
                    losses.append(m.group(1))
    return set(losses)


def loss_jaccard(ground_files, tools_files, tool_names, exp, outdir):
    grounds = list()
    for f in ground_files:
        grounds.append(
            get_set_from_log(f.replace('truetree.gv', 'log.txt'))
        )

    tools = [[] for _ in enumerate(tools_files)]
    jaccards = [[] for _ in enumerate(tools_files)]
    precs = [[] for _ in enumerate(tools_files)]
    recs = [[] for _ in enumerate(tools_files)]

    for t_ix, t_files in enumerate(tools_files):
        for f in t_files:
            s = get_set_from_tree(f)
            tools[t_ix].append(
                s
            )

    for t_ix, sets in enumerate(tools):
        for s_ix, s in enumerate(sets):
            tps = 0
            fps = 0
            fns = 0
            g = grounds[s_ix]
            for ss in s:
                if ss in g:
                    tps += 1
                else:
                    fps += 1
            for gg in g:
                if not gg in s:
                    fns += 1
            
            jaccards[t_ix].append(
                len(grounds[s_ix] & s) / float(len(grounds[s_ix] | s))
            )
            pr = 0
            # print(tps, fps, fns)
            if tps + fps > 0:
                pr = float(tps) / (tps +fps)
            precs[t_ix].append(
                pr
            )
            rc = 0
            if tps + fns:
                rc = float(tps) / (tps + fns)
            recs[t_ix].append(
                rc
            )

    print(grounds, tools)

    jacc = np.zeros((len(ground_files), len(tools_files)))
    for tool_ix, trees in enumerate(tools):
        for sim_ix, tree in enumerate(trees):
            jacc[sim_ix][tool_ix] = jaccards[tool_ix][sim_ix]

    for idx, name in enumerate(tool_names):
        print("%s -- Losses Jaccard: %f" %
            (name, np.mean(jaccards[idx]))
        )
    print('-'*40)

    # ---------------- Compile Pandas

    df_jacc = pd.DataFrame(jacc, columns=tool_names).assign(Measure='Losses Jaccard')
    df_jacc.to_csv(f'{outdir}/{exp}.loss_jaccard.csv', index=False)

if __name__ == '__main__':
    import sys
    get_set_from_tree(sys.argv[1])
