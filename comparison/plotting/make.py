import argparse, os, sys, errno
import numpy as np
from natsort import natsorted

import plot_accuracy

import measures, loader
import mp3, recurrent, loss, loglikelihood

parser = argparse.ArgumentParser(description="plot figures", add_help=True)
parser.add_argument(
    "--tground",
    action="store",
    type=str,
    nargs="+",
    required=True,
    help="path of the grounds [TREE]",
)
parser.add_argument(
    "--tloaders",
    action="store",
    type=str,
    nargs="+",
    required=True,
    help="loaders for the tools [TREE]",
)
parser.add_argument(
    "--ttools",
    action="append",
    type=str,
    nargs="+",
    required=True,
    help="path of the tools' files [TREE]",
)
parser.add_argument(
    "--mgroundT",
    action="store",
    type=str,
    nargs="+",
    required=True,
    help="path of the grounds TRUE [MATRICES]",
)
parser.add_argument(
    "--mgroundN",
    action="store",
    type=str,
    nargs="+",
    required=True,
    help="path of the grounds NOISY [MATRICES]",
)
parser.add_argument(
    "--mtools",
    action="append",
    type=str,
    nargs="+",
    required=True,
    help="path of the tools' files [MATRICES]",
)
parser.add_argument(
    "--names", action="store", nargs="+", required=True, help="names of the tools"
)
parser.add_argument(
    "--exp", action="store", type=str, required=True, help="experiment number"
)
parser.add_argument(
    "-o", "--outdir", action="store", type=str, required=True, help="output directory."
)

# parser.add_argument('--simulations', action='store', type=int, default=50,
#                     help='number of simulation')


file_loaders = {
    "ground": loader.load_from_ground,
    "sasc": loader.load_from_sasc,
    "scite": loader.load_from_scite,
    "infscite": loader.load_from_infscite,
    "sifit": loader.load_from_sifit,
    "sphyr": loader.load_from_sphyr,
}


def get_filepaths(args):
    ground_files = natsorted(args.tground)
    tools_files = args.ttools

    ground_trees = list()
    tools_trees = [[] for _ in range(len(tools_files))]

    for f in ground_files:
        ground_trees.append(f)

    for t_ix, t_files in enumerate(tools_files):
        for f in natsorted(t_files):
            tools_trees[t_ix].append(f)

    return ground_trees, tools_trees


def load_trees(args):
    ground_files = natsorted(args.tground)
    tools_files = args.ttools

    ground_trees = list()
    tools_trees = [[] for _ in range(len(tools_files))]

    for f in ground_files:
        ground_trees.append(loader.load_from_ground(f))

    for t_ix, t_files in enumerate(tools_files):
        for f in natsorted(t_files):
            tools_trees[t_ix].append(file_loaders[args.tloaders[t_ix]](f))

    return ground_trees, tools_trees


def load_matrices(args):
    # ground_dir = args.ground
    # tools_dirs = args.tools

    true_mat = list()
    noisy_mat = list()

    for f in natsorted(args.mgroundT):
        true_mat.append(np.genfromtxt(f, delimiter=" ", dtype=int))

    for f in natsorted(args.mgroundN):
        noisy_mat.append(np.genfromtxt(f, delimiter=" ", dtype=int))

    tools_mat = [[] for _ in range(len(args.mtools))]

    for t_ix, t_files in enumerate(args.mtools):
        for f in natsorted(t_files):
            tools_mat[t_ix].append(np.genfromtxt(f, delimiter=" ", dtype=int))

    # for t in tools_dirs:
    #     tools_mat.append([])

    # for sim_id in range(1, args.simulations + 1):
    # ground_file = '%s/sim_%d_truescs.txt' % (ground_dir, sim_id)
    # ground_mat.append(np.genfromtxt(ground_file, delimiter=' ', dtype=int))

    # noisy_file = '%s/sim_%d_scs.txt' % (ground_dir, sim_id)
    # noisy_mat.append(np.genfromtxt(noisy_file, delimiter=' ', dtype=int))

    # for idx, tool_dir in enumerate(tools_dirs):
    #     tool_file = m_file_formats[idx] % (tool_dir, sim_id)
    #     tools_mat[idx].append(np.genfromtxt(tool_file, delimiter=' ', dtype=int))

    return true_mat, noisy_mat, tools_mat


if __name__ == "__main__":
    args = parser.parse_args()
    simulations = len(args.tground)

    print("=" * 50)
    print("Loading files")
    print(" - Trees")
    ground_trees, tools_trees = load_trees(args)
    print(" - Matrices")
    true_mat, noisy_mat, tools_mat = load_matrices(args)
    ground_tfiles, tools_tfiles = get_filepaths(args)

    # mutations = true_mat[0].shape[1]
    mutations = 50

    print("=" * 50)
    print("Computing tree accuracies")
    plot_accuracy.plot_accuracy(
        ground_trees,
        tools_trees,
        args.names,
        mutations,
        simulations,
        args.exp,
        args.outdir,
    )

    print("=" * 50)
    print("Computing MP3")
    mp3.plot_mp3(ground_tfiles, tools_tfiles, args.names, args.exp, args.outdir)

    print("=" * 50)
    print("Computing Recurrents")
    recurrent.recurrent_jaccard(
        ground_tfiles, tools_tfiles, args.names, args.exp, args.outdir
    )

    print("=" * 50)
    print("Computing Losses")
    loss.loss_jaccard(ground_tfiles, tools_tfiles, args.names, args.exp, args.outdir)

    print("=" * 50)
    print("Computing Log-lh")
    loglikelihood.ll(ground_tfiles, true_mat, noisy_mat, tools_tfiles, args.names, args.exp, args.outdir)

"""
python comparison/plotting/make.py  \
--tground data/exp1/sim_*_truetree.gv  \
--tloaders sasc sasc  \
--ttools data/exp1/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp1/sim_*_scs.sasc.mlt.gv  \
--names reSASC SASC \
--mgroundT data/exp1/sim_*_truescs.txt  \
--mgroundN data/exp1/sim_*_scs.txt  \
--mtools data/exp1/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp1/sim_*_scs.sasc.out.txt  \
--exp exp1 -o plots
"""

"""
python comparison/plotting/make.py  \
--tground data/exp2/sim_*_truetree.gv  \
--tloaders sasc sasc  \
--ttools data/exp2/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp2/sim_*_scs.sasc.mlt.gv  \
--names reSASC SASC \
--mgroundT data/exp2/sim_*_truescs.txt  \
--mgroundN data/exp2/sim_*_scs.txt  \
--mtools data/exp2/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp2/sim_*_scs.sasc.out.txt  \
--exp exp2 -o test
"""

"""
python comparison/plotting/make.py  \
--tground data/exp3/sim_*_truetree.gv  \
--tloaders sasc sasc  \
--ttools data/exp3/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp3/sim_*_scs.sasc.mlt.gv  \
--names reSASC SASC \
--mgroundT data/exp3/sim_*_truescs.txt  \
--mgroundN data/exp3/sim_*_scs.txt  \
--mtools data/exp3/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp3/sim_*_scs.sasc.out.txt  \
--exp exp3 -o test
"""

"""
python comparison/plotting/make.py  \
--tground data/exp4/sim_*_truetree.gv  \
--tloaders sasc sasc  \
--ttools data/exp4/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp4/sim_*_scs.sasc.mlt.gv  \
--names reSASC SASC \
--mgroundT data/exp4/sim_*_truescs.txt  \
--mgroundN data/exp4/sim_*_scs.txt  \
--mtools data/exp4/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp4/sim_*_scs.sasc.out.txt  \
--exp exp4 -o test
"""

"""
python comparison/plotting/make.py  \
--tground data/exp5/sim_*_truetree.gv  \
--tloaders sasc sasc  \
--ttools data/exp5/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp5/sim_*_scs.sasc.mlt.gv  \
--names reSASC SASC \
--mgroundT data/exp5/sim_*_truescs.txt  \
--mgroundN data/exp5/sim_*_scs.txt  \
--mtools data/exp5/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp5/sim_*_scs.sasc.out.txt  \
--exp exp5 -o test
"""
