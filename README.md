# reSASC - repository for experiment reproducibility

This is a supplementary repository for the tool [`reSASC`](https://github.com/sciccolella/reSASC).

# How-to

## Clone tools repositories
```bash
mkdir tools; cd tools
git clone git@github.com:sciccolella/sasc.git
cd sasc
make
cd ..
git clone git@github.com:sciccolella/reSASC.git
cd reSASC
make
```

## Run experiments
It is necessary to install [`bpipe`](https://docs.bpipe.org/)
```bash
bash runbpipe.sh
```

## Make CSV from results
Create a virtual environment:
```bash
python -m venv resasc_supp_venv
source resasc_supp_venv/bin/activate
pip install -r requirements.txt
```

Then run:
```bash
bash plot_all.sh
```

## Explore and plot figures
Use the notebook available at [results.ipynb](./results.ipynb)