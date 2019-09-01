#!/usr/bin/python3

# A pandoc filter to avoid extra spaces before "displayed" maths in pdf output.
# It achieves this by replacing a paragraph break by a "SoftBreak".

import sys, json

data = json.load (sys.stdin)

##### TESTING #####
#with open ('test-out0.json', 'w', encoding='utf-8') as fout:
#    json.dump (data, fout, ensure_ascii=False, indent=2)
###################

newblocks = []
block0 = None
for block in data ['blocks']:
    if block0 == None:
        if block ['t'] == 'Para':
            block0 = block
        else:
            newblocks.append (block)
        continue
    if block ['t'] == 'Para':
        content = block ['c']
        # <content> is in this case always a list
        item0 = content [0]
        pjoin = False
        if item0 ['t'] == 'Math' and item0 ['c'] [0] ['t'] == 'DisplayMath':
            pjoin = True

        if item0 ['t'] == 'RawInline':
            c1 = item0 ['c']
            if c1 [0] == 'tex' and c1 [1].startswith('\\begin{align}'):
                pjoin = True

        # Append to previous 'Para' with 'SoftBreak'
        if pjoin:
            c0 = block0 ['c']
            c0.append ({'t': 'SoftBreak'})
            c0 += content
            continue

        newblocks.append (block0)
        block0 = block

    else:
        newblocks.append (block0)
        block0 = None
        newblocks.append (block)

if block0:
    newblocks.append (block0)

data ['blocks'] = newblocks

##### TESTING #####
#with open ('test-out1.json', 'w', encoding='utf-8') as fout:
#    json.dump (data, fout, ensure_ascii=False, indent=2)
###################

json.dump (data, sys.stdout, ensure_ascii=False)

