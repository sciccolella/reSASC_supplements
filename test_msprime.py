import msprime

ts = msprime.sim_ancestry(4, sequence_length=7, random_seed=1)
ratemap = msprime.RateMap(position=[0, 2, 5, 7], rate=[0.5, 0, 0.1])
mts = msprime.sim_mutations(ts, rate=ratemap, random_seed=10)
print(ts)
print(mts)
# SVG(mts.draw_svg(node_labels={}, size=(400, 300)))