# Activate venv
```bash
source expenv/bin/activate
```


bpipe run -n 32 @exp1.params.bpipe.txt bpipe.pipe data/exp1/*;\
bpipe run -n 32 @exp2.params.bpipe.txt bpipe.pipe data/exp2/*;\
bpipe run -n 32 @exp3.params.bpipe.txt bpipe.pipe data/exp3/*;\
bpipe run -n 32 @exp4.params.bpipe.txt bpipe.pipe data/exp4/*;\
bpipe run -n 32 @exp5.params.bpipe.txt bpipe.pipe data/exp5/*