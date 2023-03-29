#!/bin/bash

bpipe run -n 16 @exp1.params.bpipe.txt bpipe.pipe data/exp1/*
bpipe run -n 16 @exp2.params.bpipe.txt bpipe.pipe data/exp2/*
bpipe run -n 16 @exp3.params.bpipe.txt bpipe.pipe data/exp3/*
bpipe run -n 16 @exp4.params.bpipe.txt bpipe.pipe data/exp4/*
bpipe run -n 16 @exp5.params.bpipe.txt bpipe.pipe data/exp5/*