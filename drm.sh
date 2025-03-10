#!/bin/bash
############################
lifontspath='/home/viml/mg/vrcl/weijunext/components/lifonts/fonts/'
fontrepopath='/home/viml/mg/font'
sfdpath="${fontrepopath}/sfdsource_v2"
drumpath="${fontrepopath}/daunlod/fontdrum"
daunlodpath="${fontrepopath}/daunlod"
daunlod5_path="${fontrepopath}/daunlod/5"
declare -a arr=("15m" "15" "115" "25" "125" )
############################
printf "current directory is : $(pwd)\n"
read -n1 -s -r -p $'Press f to fill ${drumpath}...\n' key
if [ "$key" = 'f' ]; then
    printf "pressed f so filling ${drumpath}\n"
    ${sfdpath}/filldrum.sh
else
	printf "pressed other key. installing fonts from ${drumpath}\n"
fi
############################
cd ${drumpath}
############################
printf "current directory is : $(pwd)\n"
ls *.ttf *.woff2
printf "current directory is : $(pwd)\n"
read -n1 -s -r -p $'Press c to continue...\n' key
if [ "$key" = 'c' ]; then
    printf "pressed c okay continuing script\n"
else
	printf "pressed other key exiting script\n"
    exit
fi
############################
#read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'
############################
for i in "${arr[@]}"
do
	mkdir -p ${daunlod5_path}/${i}_ttf ${daunlod5_path}/${i}_woff2
done
printf "current directory is : $(pwd)\n"
printf "running ls -a ${daunlod5_path}/\n"
ls -a ${daunlod5_path}/
#exit
############################
printf "moving .ttf files from fontdrum to 5*/ now:\n"
read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'
############################
for i in "${arr[@]}"
do
	mv -f ${drumpath}/*[a-z]${i}.ttf ${daunlod5_path}/${i}_ttf/
	mv -f ${drumpath}/*[a-z]${i}.woff2 ${daunlod5_path}/${i}_woff2/
done
#exit
############################
echo "removing αll .ttf .woff2 files from fontdrum now:"
read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'
############################
rm -i ${drumpath}/*.woff2 ${drumpath}/*.ttf && ( cd ${drumpath} && pwd && ls *.woff2 *.ttf)
############################
rm -rf ~/.fonts/5 ~/.local/share/fonts/5
sudo rm -rf /usr/local/share/fonts/5 /usr/share/fonts/truetype/hscii/5 /root/.local/share/fonts/5
cp -r ${daunlod5_path} ~/.fonts/
cp -r ${daunlod5_path} ~/.local/share/fonts
sudo cp -r ${daunlod5_path} /usr/local/share/fonts/
sudo cp -r ${daunlod5_path} /usr/share/fonts/truetype/hscii/
sudo cp -r ${daunlod5_path} /root/.local/share/fonts/
############################
fc-cache -fv
sudo fc-cache -fv
############################
############################
if [ -d "~/mg/free/font/" ]; then
	rm -rf ~/mg/free/font/5
	cp -r ${daunlod5_path} ~/mg/free/font/
fi
if [ -d "~/mg/hpop/app/src/main/res/font/" ]; then
	rm -rf ~/mg/hpop/app/src/main/res/font/5
	cp -r ${daunlod5_path} ~/mg/hpop/app/src/main/res/font/
fi
############################
if [ -d ${lifontspath} ]; then
	rm -rf ${lifontspath}/15_woff2 ${lifontspath}/25_woff2
	cp -r ${daunlod5_path}/15_woff2 ${daunlod5_path}/25_woff2 ${lifontspath}/
fi
############################
#if [ -d "~/.config/GIMP/2.10/fonts/" ]; then
	#cp -r daunlod/5 daunlod/8 ~/.config/GIMP/2.10/fonts/
#fi
#if [ -d "/usr/share/gimp/2.0/fonts/" ]; then
	#sudo cp -r daunlod/5 daunlod/8 /usr/share/gimp/2.0/fonts/
#fi
############################
