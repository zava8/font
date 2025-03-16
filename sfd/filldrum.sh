#!/bin/bash
############################
fontrepopath='/home/viml/mg/font'
sfdpath="${fontrepopath}/sfdsource_v2/"
drumpath="${fontrepopath}/daunlod/fontdrum/"
declare -a arr=("15m" "15" "115" "25" "125" )
############################
for i in "${arr[@]}"
do
	srcpath="source${i}"
	cd $sfdpath/$srcpath/ ; sed -E -i 's/.*lookup.*//' *[a-z]${i}.sfd ; ./convert.pe *[a-z]${i}.sfd ; 
	mv *[a-z]${i}.ttf *[a-z]${i}.woff2 $drumpath/
done
############################

