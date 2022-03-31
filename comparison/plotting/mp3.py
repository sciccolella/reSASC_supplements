import mp3treesim as mp3
import numpy as np
import pandas as pd

def fix_commas(path):
    newlines = []
    with open(path, 'r') as f:
        for line in f:
            line = line.rstrip()
            if 'label' in line:
                node, label = line.split('[')
                label = label.replace(' ', ',')
                newlines.append(f'{node}[{label}')
            else:
                newlines.append(line)
    return newlines

def plot_mp3(ground_files, tools_files, tool_names, exp, outdir):
    grounds = list()
    for f in ground_files:
        grounds.append(mp3.read_dotstring('\n'.join(fix_commas(f))))

    tools = [[] for _ in enumerate(tools_files)]
    for t_ix, t_files in enumerate(tools_files):
        for f in t_files:
            tools[t_ix].append(
                mp3.read_dotfile(f, exclude=["germline"])
            )
    
    mp3_np = np.zeros((len(ground_files), len(tools_files)))
    for tool_ix, trees in enumerate(tools):
        for sim_ix, tree in enumerate(trees):
            mp3_np[sim_ix][tool_ix] = mp3.similarity(grounds[sim_ix], tree)

    print(mp3_np)

    for idx, name in enumerate(tool_names):
        print("%s -- MP3 means: %f" %
            (name, np.mean(mp3_np[:,idx]))
        )
    print('-'*40)

    # ---------------- Compile Pandas

    df = pd.DataFrame(mp3_np, columns=tool_names).assign(Measure='MP3')
    df.to_csv(f'{outdir}/{exp}.mp3.csv', index=False)
    