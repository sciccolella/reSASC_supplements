#!/bin/bash

python comparison/plotting/make.py  \
--tground data/exp1/sim_*_truetree.gv  \
--tloaders sasc sasc sasc  \
--ttools data/exp1/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp1/sim_*_scs.sasc.mlt.gv  \
--ttools data/exp1/sim_*_scs.sasc.pp.mlt.gv  \
--names reSASC Dollo-k PP \
--mgroundT data/exp1/sim_*_truescs.txt  \
--mgroundN data/exp1/sim_*_scs.txt  \
--mtools data/exp1/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp1/sim_*_scs.sasc.out.txt  \
--mtools data/exp1/sim_*_scs.sasc.pp.out.txt  \
--exp exp1 -o plots

python comparison/plotting/make.py  \
--tground data/exp2/sim_*_truetree.gv  \
--tloaders sasc sasc sasc \
--ttools data/exp2/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp2/sim_*_scs.sasc.mlt.gv  \
--ttools data/exp2/sim_*_scs.sasc.pp.mlt.gv  \
--names reSASC Dollo-k PP \
--mgroundT data/exp2/sim_*_truescs.txt  \
--mgroundN data/exp2/sim_*_scs.txt  \
--mtools data/exp2/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp2/sim_*_scs.sasc.out.txt  \
--mtools data/exp2/sim_*_scs.sasc.pp.out.txt  \
--exp exp2 -o plots

python comparison/plotting/make.py  \
--tground data/exp3/sim_*_truetree.gv  \
--tloaders sasc sasc sasc \
--ttools data/exp3/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp3/sim_*_scs.sasc.mlt.gv  \
--ttools data/exp3/sim_*_scs.sasc.pp.mlt.gv  \
--names reSASC Dollo-k PP \
--mgroundT data/exp3/sim_*_truescs.txt  \
--mgroundN data/exp3/sim_*_scs.txt  \
--mtools data/exp3/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp3/sim_*_scs.sasc.out.txt  \
--mtools data/exp3/sim_*_scs.sasc.pp.out.txt  \
--exp exp3 -o plots

python comparison/plotting/make.py  \
--tground data/exp4/sim_*_truetree.gv  \
--tloaders sasc sasc sasc \
--ttools data/exp4/sim_*_scs.sasc_rec.mlt.gv  \
--ttools data/exp4/sim_*_scs.sasc.mlt.gv  \
--ttools data/exp4/sim_*_scs.sasc.pp.mlt.gv  \
--names reSASC Dollo-k PP \
--mgroundT data/exp4/sim_*_truescs.txt  \
--mgroundN data/exp4/sim_*_scs.txt  \
--mtools data/exp4/sim_*_scs.sasc_rec.out.txt  \
--mtools data/exp4/sim_*_scs.sasc.out.txt  \
--mtools data/exp4/sim_*_scs.sasc.pp.out.txt  \
--exp exp4 -o plots

# python comparison/plotting/make.py  \
# --tground data/exp5/sim_*_truetree.gv  \
# --tloaders sasc sasc sasc \
# --ttools data/exp5/sim_*_scs.sasc_rec.mlt.gv  \
# --ttools data/exp5/sim_*_scs.sasc.mlt.gv  \
# --ttools data/exp5/sim_*_scs.sasc.pp.mlt.gv  \
# --names reSASC Dollo-k PP \
# --mgroundT data/exp5/sim_*_truescs.txt  \
# --mgroundN data/exp5/sim_*_scs.txt  \
# --mtools data/exp5/sim_*_scs.sasc_rec.out.txt  \
# --mtools data/exp5/sim_*_scs.sasc.out.txt  \
# --mtools data/exp5/sim_*_scs.sasc.pp.out.txt  \
# --exp exp5 -o plots