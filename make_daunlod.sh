#!/bin/bash -i
####################
mkdir -p daunlod/5/54 daunlod/5/8  daunlod/5m/54m daunlod/5m/8m
############################
mv daunlod/fontdrum/*5.ttf daunlod/5/ && ( cd daunlod/5/ && pwd && ls *.ttf)
mv daunlod/fontdrum/*54.ttf daunlod/5/54/ && ( cd daunlod/5/54 && pwd && ls *.ttf)
mv daunlod/fontdrum/*8.ttf daunlod/5/8/ && ( cd daunlod/5/8 && pwd && ls *.ttf)
mv daunlod/fontdrum/*84.ttf daunlod/5/84/ && ( cd daunlod/5/84 && pwd && ls *.ttf)
mv daunlod/fontdrum/*5m.ttf daunlod/5m/ && ( cd daunlod/5m/ && pwd && ls *.ttf)
mv daunlod/fontdrum/*54m.ttf daunlod/5m/54m/ && ( cd daunlod/5m/54m && pwd && ls *.ttf)
mv daunlod/fontdrum/*8m.ttf daunlod/5m/8m/ && ( cd daunlod/5m/8m && pwd && ls *.ttf)
mv daunlod/fontdrum/*84m.ttf daunlod/5m/8m/84m/ && ( cd daunlod/5m/8m/84m/ && pwd && ls *.ttf)
( cd daunlod/fontdrum && pwd && ls *.ttf)
rm -i daunlod/fontdrum/*.ttf && ( cd daunlod/fontdrum && pwd && ls *.ttf)
############################
