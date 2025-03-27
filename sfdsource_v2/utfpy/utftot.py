#!/usr/bin/python3
import fontforge
# import sys
from simbl_src_dict import simbl_src_dict
print(simbl_src_dict)
utftot = (
    ("cbindu", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "e", "i", "nukta", "nukta", "a", "spesl", "i", "u", "u", "ri", "ri", "e", "e", "e", "e", "o", "o", "o", "o", "nukta", "null", "o", "om", "udatta", "anudtta", "grave", "acute", "e", "u", "u", "k", "kh", "g", "z", "d", "dh", "f", "y", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "abbre", "hsdot", "A", "_e", "_o", "_o", "_u", "_u", "D", "zh", "y", "g", "z", "?", "d", "b", ),
    ("spesl", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "null", "null", "nukta", "nukta", "a", "spesl", "i", "u", "u", "ri", "ri", "null", "null", "spesl", "spesl", "null", "null", "spesl", "spesl", "nukta", "T", "null", "null", "null", "null", "null", "null", "null", "null", "o", "null", "null", "null", "null", "d", "dh", "null", "y", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "r", "w", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "nbindu", "abbre", "nukta", "null" ),
    ("cbindu", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "null", "null", "nukta", "nukta", "a", "spesl", "i", "u", "u", "ri", "ri", "null", "null", "e", "e", "null", "null", "o", "o", "nukta", "null", "null", "null", "udatta", "null", "null", "null", "null", "null", "null", "null", "kh", "g", "z", "d", "dh", "f", "null", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "nbindu", "cbindu", "i", "u", "spesl", "y", "-", "null", "null", "null", "null", "null", "null", "null", "null", "null"),
    ("cbindu", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "null", "null", "nukta", "nukta", "a", "spesl", "i", "u", "u", "ri", "ri", "e", "null", "e", "e", "o", "null", "o", "o", "nukta", "null", "null", "om", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "abbre", "r", "null", "null", "null", "null", "null", "null", "null", "zh", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl" ),
    ("cbindu", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "null", "null", "nukta", "nukta", "a", "i", "i", "u", "u", "ri", "ri", "null", "null", "spesl", "spesl", "null", "null", "spesl", "spesl", "nukta", "null", "null", "null", "null", "null", "null", "null", "spesl", "e", "o", "null", "null", "null", "null", "r", "dh", "null", "y", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "spesl", "w", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "null", "null", "null", "null", "null", "null", "null", "null"),
    ("null", "null", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "null", "null", "nukta", "nukta", "a", "i", "i", "u", "u", "ri", "ri", "null", "spesl", "spesl", "spesl", "null", "spesl", "spesl", "spesl", "nukta", "null", "null", "om", "null", "null", "null", "null", "null", "null", "o", "null", "null", "null", "null", "null", "null", "null", "null", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "ten", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "null", "null", "null", "null", "null"),
    ("cbindu", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "null", "null", "nukta", "nukta", "a", "i", "i", "u", "u", "ri", "ri", "null", "e", "e", "e", "null", "o", "o", "o", "nukta", "null", "null", "null", "null", "null", "null", "null", "o", "e", "null", "s", "z", "r", "null", "null", "n", "null", "null", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "null", "null", "null", "null", "null", "null", "null", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl"),
    ("cbindu", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "null", "null", "nukta", "nukta", "a", "i", "i", "u", "u", "ri", "ri", "null", "e", "e", "e", "null", "o", "o", "o", "nukta", "null", "null", "null", "null", "null", "null", "null", "spesl", "spesl", "null", "null", "null", "null", "null", "null", "n", "l", "null", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "ten", "spesl", "spesl", "spesl", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null"),
    ("cbindu", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "spesl", "cbindu", "nukta", "spesl", "a", "i", "i", "u", "u", "ri", "ri", "null", "spesl", "spesl", "spesl", "null", "spesl", "spesl", "spesl", "nukta", "cbindu", "o", "null", "null", "null", "null", "m", "y", "l", "o", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "spesl", "n", "n", "r", "l", "l", "k"),
    ("null", "cbindu", "nbindu", "colon", "null", "A", "aa", "Ae", "ae", "_i", "_i", "_u", "_u", "r", "ri", "l", "l", "_e", "_e", "_e", "o", "o", "o", "null", "null", "null", "k", "kh", "g", "gh", "ng", "ng", "c", "ch", "z", "zh", "n", "n", "n", "t", "th", "d", "dh", "n", "n", "t", "th", "d", "dh", "n", "null", "n", "p", "f", "b", "bh", "m", "mb", "y", "r", "null", "l", "null", "null", "w", "sh", "s", "s", "H", "l", "f", "null", "null", "null", "nukta", "null", "null", "null", "null", "a", "e", "ae", "i", "i", "u", "null", "u", "null", "ri", "e", "e", "e", "o", "o", "o", "l", "null", "null", "null", "null", "null", "null", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "null", "null", "ri", "l", "spesl", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null", "null")
)
# for langi in range(len(utftot)):
#     print(f"langi is {langi} . len(utftot[{langi}]) is {len(utftot[langi])}")
# exit()
startpoint = 0x900
scripts = (
    "ing",
    "hindi",
    "bangla","guzrati","gurmukhi","oriya",
    "korean",
    "telugu","tamil","kannada","malayalam","sinhala"
    # ,"eng","binaryv","binaryh","hex",
    # "notosans"
)
for x in scripts:
    x115 = fontforge.open(f"/home/viml/mg/font/sfdpyforge/source115/{x}115.sfd")
    print(f"x is {x} and x115 family name is {x115.familyname}")
    for langi in range(len(utftot)):
        for remainder_i in range(len(utftot[langi])):
            target_i = startpoint + 128*langi + remainder_i
            print(f"langi is {langi} . remainder_i is {remainder_i} and target_i is {target_i}")
            src_simbl = utftot[langi][remainder_i]
            if src_simbl in simbl_src_dict:
                src_simbl_i = simbl_src_dict[src_simbl]
                print(f"src_simbl is {src_simbl} and src_simbl_i is {src_simbl_i} and target_i is {target_i}")
                if src_simbl_i != target_i:
                    x115.selection.select(src_simbl_i)
                    x115.copyReference()
                    x115.selection.select(target_i)
                    x115.clear()
                    x115.paste()
    x115.save()
    x115.close()

