#!/usr/bin/env python
# this is awful code btw
def run():
    S = []
    varlist = set()

    with open('sol1.txt') as f:
        for line in f:
            S.append(line.strip())
    S = S[1:]
    for line in S:
        a = line.split()
        if len(a) != 6 or a[4] != '|' or a[5] not in ['0', '1']:
            print('I can\'t read this line! It says "{}"'.format(line))
            raise Exception(a)
    if len(S) != 16:
            print('You don\'t have enough lines!')
            raise Exception('Not enough lines')
    return 0

try:
    run()
    print('GOOD FORMATTING')
except:
        print('BAD FORMATTING')
