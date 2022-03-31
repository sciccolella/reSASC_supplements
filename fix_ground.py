import sys

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

if __name__ == '__main__':

    newlines = fix_commas(sys.argv[1])
    for l in newlines:
        print(l)