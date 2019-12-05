#!/usr/bin/env python3
import fileinput

FAIL = False
LOAD_HAZARD = None
DATA_HAZARD = [None, None]
for line in fileinput.input():
    line = line.strip()
    op, *args = line.replace(',','').split()
    if args:
        write, *reads = args 
        for r in reads:
            if r in DATA_HAZARD:
                print('There is a data hazard! [BAD]')
                print('It was on this line: {}'.format(line))
                FAIL = True
            if r == LOAD_HAZARD:
                print('There is a load-use hazard! [BAD]')
                print('It was on this line: {}'.format(line))
                FAIL = True
    LOAD_HAZARD = write if 'ld' in op else None;
    DATA_HAZARD = [write if op not in ['ld', 'nop'] else None] + DATA_HAZARD[:1]
if not FAIL:
    print('I see nothing wrong! [GOOD]')
