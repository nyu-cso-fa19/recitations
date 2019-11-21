#!/usr/bin/env python
# this is awful code btw
def next(fsm, state, i):
    return fsm[(*state, i)]
def run():
    S = []
    FSM = {}

    with open('sol1.txt') as f:
        for line in f:
            S.append(line.strip())
    S = S[1:]

    if len(S) != 8:
            print('You don\'t have enough lines!')
            raise Exception('Not enough lines')
        
    for line in S:
        a = line.split()
        a = [int(x) for x in a if x in ['0', '1']]
        if len(a) != 6:
            raise Exception('Line too short!')
        key = tuple(a[:3])
        val = tuple(a[3:])
        FSM[key] = val
        
    state = (0, 0)
    for onesInARow in range(1, 101):
        (*state, output) = next(FSM, state, 0)
        assert output == 1, 'An output is wrong!'
        for i in range(1, onesInARow + 1):
            (*state, output) = next(FSM, state, 1)
            assert output == (i % 4 == 0), 'An output is wrong!'
        (*state, output) = next(FSM, state, 0)
        assert output == 1, 'An output is wrong!'
    print('Everything seems good! [GOOD]')


try:
    run()
except Exception as E:
    print(E)
    print('Something went wrong. [BAD]')
