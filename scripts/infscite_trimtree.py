import sys

with open(sys.argv[1], "r") as fin:
    for line in fin:
        if line.startswith("node [color=lightgrey, style=filled, fontcolor=black,"):
            continue
        if not "s_" in line:
            line = line.replace("Root", "germline")
            line = line.replace("_copy", "")
            print(line, end="")
