#!/bin/bash -i
############################
#~/mg/free/font/
#~/mg/hpop/app/src/main/res/font/
############################
# ~/.fonts/
# ~/.local/share/fonts/
#~/.config/GIMP/2.10/fonts/	
#/usr/share/gimp/2.0/fonts/
# /usr/local/share/fonts/
# /usr/share/fonts/truetype/hscii/
# /root/.local/share/fonts/
############################
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
if [ -d "~/mg/free/font/" ]; then
	cp -r daunlod/5 daunlod/5m ~/mg/free/font/
fi
if [ -d "~/mg/hpop/app/src/main/res/font/" ]; then
	cp -r daunlod/5 daunlod/5m ~/mg/hpop/app/src/main/res/font/
fi
############################
cp -r daunlod/5 daunlod/5m ~/.fonts/
cp -r daunlod/5 daunlod/5m ~/.local/share/fonts
if [ -d "~/.config/GIMP/2.10/fonts/" ]; then
	cp -r daunlod/5 daunlod/5m ~/.config/GIMP/2.10/fonts/
fi
if [ -d "/usr/share/gimp/2.0/fonts/" ]; then
	sudo cp -r daunlod/5 daunlod/5m /usr/share/gimp/2.0/fonts/
fi
sudo cp -r daunlod/5 daunlod/5m /usr/local/share/fonts/
sudo cp -r daunlod/5 daunlod/5m /usr/share/fonts/truetype/hscii/
sudo cp -r daunlod/5 daunlod/5m /root/.local/share/fonts/
############################
fc-cache -fv
sudo fc-cache -fv
############################
