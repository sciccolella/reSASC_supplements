from tree import Node, Tree
import re

def load_from_ground(filepath):
    tree = []
    with open(filepath, 'r') as f:
        tree = f.readlines()

    ROOT = Node(0)
    TREE = Tree(ROOT)
    gv = tree[1:-1]
    for line in gv:
        line = line.strip()
        if ' -> ' in line:
            s, e = line.split(' -> ')

            s = int(s.replace('"', ''))
            e = int(e.replace('"', ''))

            x = TREE.get_node(s)
            if not x:
                x = Node(s)
                TREE.add_node(x)

            y = TREE.get_node(e)
            if not y:
                y = Node(e)
                TREE.add_node(y)

            TREE.add_edge(s, e)

        if 'label' in line:
            id, label = line.split(' [')

            id = int(id.replace('"', '').strip())
            label = label[7: -3]
            if '-' in label:
                TREE.set_deletion(id)
                label = label.replace('-', '')
                TREE.set_mutations(id, [label])
            else:
                mut = label.split(' ')
                node = TREE.get_node(id)
                TREE.set_mutations(id, mut)

    return TREE

def load_from_sasc(filepath, score=True):
    tree = []
    with open(filepath, 'r') as f:
        tree = f.readlines()

    ROOT = Node(0)
    TREE = Tree(ROOT)
    if score:
        gv = tree[1:-3]
    else:
        gv = tree[1:-1]

    for line in gv:
        line = line.strip()[:-1]
        if ' -> ' in line:
            s, e = line.split(' -> ')

            s = int(s.replace('"', ''))
            e = int(e.replace('"', ''))

            x = TREE.get_node(s)
            if not x:
                x = Node(s)
                TREE.add_node(x)

            y = TREE.get_node(e)
            if not y:
                y = Node(e)
                TREE.add_node(y)

            TREE.add_edge(s, e)
            # print(s, e)

        if 'label' in line:
            id, label = line.split(' [')

            id = int(id.replace('"', '').strip())
            label = label[: -1]
            if 'color=indianred1' in label:
                m = re.search(r'label="(\d+)"', label)
                mut = str(m.group(1))
                TREE.set_deletion(id)
                TREE.set_mutations(id, [mut])
            else:
                if id != 0:
                    m = re.search(r'label="(\d+)"', label)
                    mut = str(m.group(1))
                else:
                    mut = 'germline'
                # node = TREE.get_node(id)
                TREE.set_mutations(id, [mut])

    return TREE

def load_from_ilp(filepath):
    tree = []
    with open(filepath, 'r') as f:
        tree = f.readlines()

    ROOT = Node(0)
    TREE = Tree(ROOT)
    gv = tree[1:-1]
    first = gv.pop(0)
    gv.append(first)
    for line in gv:
        line = line.strip()[:-1]
        if ' -> ' in line:
            s, e = line.split(' -> ')

            s = int(s.replace('"', ''))
            e = int(e.replace('"', ''))

            x = TREE.get_node(s)
            if not x:
                x = Node(s)
                TREE.add_node(x)

            y = TREE.get_node(e)
            if not y:
                y = Node(e)
                TREE.add_node(y)

            TREE.add_edge(s, e)
            # print(s, e)

        if 'label' in line:
            id, label = line.split(' [')

            id = int(id.replace('"', '').strip())
            label = label[: -1]
            if 'color=indianred1' in label:
                m = re.search(r'label="(\d+)--"', label)
                mut = str(m.group(1))
                TREE.set_deletion(id)
                TREE.set_mutations(id, [mut])
            else:
                if not 'germline' in label:
                    m = re.search(r'label="(\d+)"', label)
                    mut = str(m.group(1))
                else:
                    mut = 'germline'
                    TREE.root = TREE.get_node(id)
                # node = TREE.get_node(id)
                TREE.set_mutations(id, [mut])

    return TREE

def load_from_sifit(filepath):
    tree = []
    with open(filepath, 'r') as f:
        tree = f.readlines()

    ROOT = Node(0)
    TREE = Tree(ROOT)
    gv = tree[1:-1]
    first = gv.pop(0)
    gv.append(first)
    for line in gv:
        line = line.strip()[:-1]
        if ' -> ' in line:
            s, e = line.split(' -> ')

            s = int(s.replace('"', ''))
            e = int(e.replace('"', ''))

            x = TREE.get_node(s)
            if not x:
                x = Node(s)
                TREE.add_node(x)

            y = TREE.get_node(e)
            if not y:
                y = Node(e)
                TREE.add_node(y)

            TREE.add_edge(s, e)
            # print(s, e)

        if 'label' in line:
            id, label = line.split(' [')

            id = int(id.replace('"', '').strip())
            label = label[: -1]
            if 'color=indianred1' in label:
                m = re.search(r'label="(\d+)--"', label)
                mut = str(m.group(1))
                TREE.set_deletion(id)
                TREE.set_mutations(id, [mut])
            else:
                if not 'germline' in label:
                    m = re.search(r'label="(\d+)"', label)
                    mut = str(m.group(1))
                else:
                    mut = 'germline'
                    TREE.root = TREE.get_node(id)
                # node = TREE.get_node(id)
                TREE.set_mutations(id, [mut])

    return TREE

def load_from_scite(filepath):
    tree = []
    with open(filepath, 'r') as f:
        tree = f.readlines()

    ROOT = Node(0)
    TREE = Tree(ROOT)
    gv = tree[2:-1]
    for line in gv:
        line = line.strip()[:-1]
        line = line.replace('Root', '0')

        if ' -> ' in line and not 's' in line:
            s, e = line.split(' -> ')

            s = int(s.replace('"', ''))
            e = int(e.replace('"', ''))

            x = TREE.get_node(s)
            if not x:
                x = Node(s)
                TREE.add_node(x)

            y = TREE.get_node(e)
            if not y:
                y = Node(e)
                TREE.add_node(y)

            TREE.add_edge(s, e)
            if s !=0:
                TREE.set_mutations(s, [str(s)])
            else:
                TREE.set_mutations(0, ['germline'])
            TREE.set_mutations(e, [str(e)])

    return TREE

def load_from_infscite(filepath):
    tree = []
    with open(filepath, 'r') as f:
        tree = f.readlines()

    ROOT :Node = None
    TREE :Tree = None
    rootid = -1
    LABELS = dict()
    gv = tree[2:-1]
    for line in gv:
        line = line.strip()
        line = line.replace('Root', 'germline')

        if not "s_" in line and 'label' in line:
            m = re.search(r'(\d+)\[label="(\d+(_copy)?|germline)"', line)
            lbl = m.group(2)
            if lbl == "germline":
                rootid = int(m.group(1))
                ROOT = Node(rootid)
                TREE = Tree(ROOT)
                TREE.set_mutations(rootid, ["germline"])
            LABELS[int(m.group(1))] = lbl.replace("_copy", "")


        if ' -> ' in line and not 's' in line:
            line = line[:-1]
            s, e = line.split(' -> ')

            s = int(s.replace('"', ''))
            e = int(e.replace('"', ''))

            x = TREE.get_node(s)
            if not x:
                x = Node(s)
                TREE.add_node(x)

            y = TREE.get_node(e)
            if not y:
                y = Node(e)
                TREE.add_node(y)

            TREE.add_edge(s, e)
            if s != rootid:
                TREE.set_mutations(s, [LABELS[s]])
            TREE.set_mutations(e, [LABELS[e]])

    return TREE

def load_from_phiscs(filepath):
    import warnings
    warnings.warn("This function has not been tested completely.", DeprecationWarning)

    tree = []
    with open(filepath, 'r') as f:
        tree = f.readlines()

    ROOT = Node(0)
    TREE = Tree(ROOT)
    gv = tree[1:-1]
    for line in gv:
        line = line.strip()[:-1]
        line = line.replace('germline', '0')

        if ' -- ' in line:
            s, e = line.split(' -- ')
            s = s.replace('"', '')
            e = e.replace('"', '')

            if ',' in s:
                ss = [int(x) for x in s.split(',')]
                ss = sorted(ss)
                for k in range(len(ss)-1):
                    m = ss[k]
                    n = ss[k+1]

                    if not (n, m) in TREE.edges:
                        x = TREE.get_node(m)
                        if not x:
                            x = Node(m)
                            TREE.add_node(x)

                        y = TREE.get_node(n)
                        if not y:
                            y = Node(n)
                            TREE.add_node(y)

                        TREE.add_edge(m, n)
                        if m !=0:
                            TREE.set_mutations(m, [str(m)])
                        else:
                            TREE.set_mutations(0, ['germline'])
                        TREE.set_mutations(n, [str(n)])
                    if n == len(ss):
                        break
                s = str(ss[-1])
            
            if ',' in e:
                ss = [int(x) for x in e.split(',')]
                ss = sorted(ss)
                for k in range(len(ss)-1):
                    m = ss[k]
                    n = ss[k+1]
                    # print(m,n)
                    if not (n, m) in TREE.edges:
                        x = TREE.get_node(m)
                        if not x:
                            x = Node(m)
                            TREE.add_node(x)

                        y = TREE.get_node(n)
                        if not y:
                            y = Node(n)
                            TREE.add_node(y)

                        TREE.add_edge(m, n)
                        if m !=0:
                            TREE.set_mutations(m, [str(m)])
                        else:
                            TREE.set_mutations(0, ['germline'])
                        TREE.set_mutations(n, [str(n)])
                    if n == len(ss):
                        break
                e = str(ss[0])

            s = int(s.replace('"', ''))
            e = int(e.replace('"', ''))

            x = TREE.get_node(s)
            if not x:
                x = Node(s)
                TREE.add_node(x)

            y = TREE.get_node(e)
            if not y:
                y = Node(e)
                TREE.add_node(y)

            TREE.add_edge(s, e)
            if s !=0:
                TREE.set_mutations(s, [str(s)])
            else:
                TREE.set_mutations(0, ['germline'])
            TREE.set_mutations(e, [str(e)])

    return TREE

def load_from_sphyr(filepath):
    tree = []
    with open(filepath, 'r') as f:
        tree = f.readlines()

    max_nid = 0
    ROOT = Node(0)
    TREE = Tree(ROOT)
    TREE.set_mutations(0, ['germline'])
    gv = tree[1:-1]
    for line in gv:
        if 'label=""' in line:
            # Internal nodes to be created
            nid = int(line.split()[0])
            if not nid == 0: 
                x = Node(nid)
                TREE.add_node(x)

                if nid > max_nid:
                    max_nid = nid

        if '->' in line and 'label' in line:
            # print(line)
            s = int(line.split()[0])
            e = int(line.split()[2])
            # print(s,e)

            m = re.search(r'label="(.+)"', line)
            label = str(m.group(1))

            if '--' in label:
                muts = label.split('\\n')
                # print(muts)
                loss = list()
                acq = list()
                for m in muts:
                    if not '--' in m:
                        acq.append(m)
                    else:
                        loss.append(m.replace('--', ''))
                
                TREE.set_deletion(e)
                TREE.set_mutations(e, loss)

                if len(acq) > 0:
                    max_nid += 1
                    z = Node(max_nid)
                    TREE.add_node(z)

                    TREE.set_mutations(max_nid, acq)
                    TREE.add_edge(s, max_nid)

                    TREE.add_edge(max_nid, e)
                else:
                    TREE.add_edge(s, e)
                    
            else:
                y = TREE.get_node(e)
                TREE.set_mutations(e, label.split('\\n'))
                # print(y.id, ':', y.get_name_comma())

                TREE.add_edge(s, e)

    return TREE

if __name__ == '__main__':
    test = load_from_sphyr('test_data/sim_13_scs.gv')

    import draw
    import networkx as nx

    tikz = draw.TikzPrinter()
    tikz.generate_nx(test.edges, test)
    pos = nx.nx_agraph.graphviz_layout(tikz.nxG, prog='dot')

    code = tikz.get_tikz()
    print('\n'.join(code))
