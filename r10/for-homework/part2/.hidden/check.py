#!/usr/bin/env python
# this is awful code btw
import collections

def attempt(varlist, E, D=collections.OrderedDict()):
    if not varlist:
        s = ''
        for v in D:
            s += '{} '.format(D[v])
        globals().update(D)
        r = eval(E) and '1' or '0'
        s += ' | {}'.format(r)
        print(s)
        return
    var = varlist[0]
    D[var] = 0
    attempt(varlist[1:], E, D)
    D[var] = 1
    attempt(varlist[1:], E, D)

def run():
    S = []
    varlist = set()

    with open('sol2.txt') as f:
        for line in f:
            S += [x for x in line if x != ' ' and x != '\n']
    S = [x if x != '~' else 'not' for x in S]
    S = [x if x != '+' else 'or' for x in S]
    i = 1
    last = S[0]
    while i < len(S):
        a = len(last) == 1 and last not in ['(', ')']
        b = S[i] not in [')', 'and', 'or']
        if a:
            varlist.add(last)
        if a and b:
            S.insert(i, 'and')
            i += 1
        last = S[i]
        i += 1
    a = len(last) == 1 and last not in ['(', ')']
    if a:
        varlist.add(last)
    E = ' '.join(S)
    varlist = sorted(list(varlist))
    print(' '.join(varlist))
    attempt(list(varlist), E)
    print('I was able to read your expression')


try:
    run()
except Exception:
    print("BAD EXPRESSION")
