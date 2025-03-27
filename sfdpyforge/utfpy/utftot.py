#!/usr/bin/python3
import fontforge
from simbl_src_dict import simbl_src_dict
print(simbl_src_dict)
utftot = (
    ( "cbindu", "cbindu", "nbindu", "colon", "_e", "A", "aa", "_i", "_i", "_u", "_u", "ri", "l", "_e", "_e", "_e", "_e", "_o", "_o", "_o", "_o", "k", "kh", "g", "gh", "ng", "c", "ch", "z", "zh", "n", "t", "th", "d", "dh", "n", "T", "Th", "D", "Dh", "n", "n", "p", "f", "b", "bh", "m", "y", "r", "r", "l", "l", "l", "w", "sh", "s", "s", "H", "e", "i", "nukta", "nukta", "a", "spesl", "i", "u", "u", "ri", "ri", "e", "e", "e", "e", "o", "o", "o", "o", "nukta", "null", "o", "om", "udatta", "anudtta", "grave", "acute", "e", "u", "u", "k", "kh", "g", "z", "d", "dh", "f", "y", "ri", "l", "l", "l", "fstop", "fstop", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "abbre", "hsdot", "A", "_e", "_o", "_o", "_u", "_u", "D", "zh", "y", "g", "z", "?", "d", "b", ),

)
print(len(utftot[0]))
startpoint = 0x900
for langi in range(len(utftot)):
  for remainder_i in range(len(utftot[langi])):
    target_i = startpoint + 128*langi + remainder_i
    print(f"langi is {langi} . remainder_i is {remainder_i}")
    print(f"target_i is {target_i}")
    print(f"utftot[{langi}][{remainder_i}] is {utftot[langi][remainder_i]}")
print(f"startpoint is {startpoint}")

