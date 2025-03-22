#!/bin/bash
############################
gitmsz_zw4s="mck82.vercel.app zikis8.vercel.app fb.com/ztrabc"
############################
lifontspath='/home/viml/mg/vrcl/weijunext/components/lifonts/fonts/'
fontrepopath='/home/viml/mg/font'
sfdpath="${fontrepopath}/sfdsource_v2"
drumpath="${fontrepopath}/daunlod/fontdrum"
daunlodpath="${fontrepopath}/daunlod"
daunlod_hfont_path="${fontrepopath}/daunlod/hfont"
declare -a arr=("15m" "15" "115" "25" "125" "4")
############################
printf "current directory is : $(pwd)\n"
read -n1 -s -r -p $'Press f to fill ${drumpath}...\n' key
if [ "$key" = 'f' ]; then
    printf "pressed f so filling ${drumpath}\n"
    ${sfdpath}/filldrum.sh
else
	printf "pressed other key ${key} . installing fonts from ${drumpath}\n"
fi
#exit
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
	mkdir -p ${daunlod_hfont_path}/${i}_ttf ${daunlod_hfont_path}/${i}_woff2
done
printf "current directory is : $(pwd)\n"
printf "running ls -a ${daunlod_hfont_path}/\n"
ls -a ${daunlod_hfont_path}/
#exit
############################
printf "moving .ttf files from fontdrum to ${daunlod_hfont_path}/ now:\n"
read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'
############################ aaaa4.ttf/woff2 aaaaa15.ttf/woff2 and so on .....
for i in "${arr[@]}"
do
	mv -f ${drumpath}/*[a-z]${i}.ttf ${daunlod_hfont_path}/${i}_ttf/
	mv -f ${drumpath}/*[a-z]${i}.woff2 ${daunlod_hfont_path}/${i}_woff2/
done
#exit
############################
echo "removing αll .ttf .woff2 files from fontdrum now:"
read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'
############################
rm -i ${drumpath}/*.woff2 ${drumpath}/*.ttf && ( cd ${drumpath} && pwd && ls *.woff2 *.ttf)
############################
rm -rf ~/.fonts/hfont ~/.local/share/fonts/hfont
sudo rm -rf /usr/local/share/fonts/hfont /usr/share/fonts/truetype/hfont /root/.local/share/fonts/hfont
cp -r ${daunlod_hfont_path} ~/.fonts/
cp -r ${daunlod_hfont_path} ~/.local/share/fonts
sudo cp -r ${daunlod_hfont_path} /usr/local/share/fonts/
sudo cp -r ${daunlod_hfont_path} /usr/share/fonts/truetype/
sudo cp -r ${daunlod_hfont_path} /root/.local/share/fonts/
#exit
############################
fc-cache -fv
sudo fc-cache -fv
############################
printf "font instAll done : $(pwd)\n"
############################
if [ -d "/home/viml/mg/free/" ]; then
	printf "replaciNg old hfont by niyu hfont in /home/viml/mg/free/.\n"
	rm -rf /home/viml/mg/free/hfont
	cp -r ${daunlod_hfont_path} /home/viml/mg/free/
	############################
	printf "current directory is : $(pwd)\n"
	read -n1 -s -r -p $'Press g to git add commit push\n' key
	############################
	if [ "$key" = 'g' ]; then
		printf "pressed g so doiNg filling git add commit push /home/viml/mg/free.\n"
		cd /home/viml/mg/free/ && printf "current directory is : $(pwd)\n"
		git add . ; git commit -am "mck82.vercel.app zikis8.vercel.app fb.com/ztrabc" ; git push
		cd /home/viml/mg/font/
	else
		printf "pressed other key ${key} .  so not doiNg git-commiting. please do git add-commit-push /home/viml/mg/free lateron \n"
	fi	
else
	printf "/home/viml/mg/free/ does not ekzist.\n"
fi
############################
if [ -d "/home/viml/mg/zw4s/hfont" ]; then
	printf "replaciNg old folders in hfont by niyu folders in /home/viml/mg/zw4s/hfont.\n"
	##### rm -rf /home/viml/mg/zw4s/hfont/*
	cp -r ${daunlod_hfont_path}/* /home/viml/mg/zw4s/hfont/
	############################
	printf "current directory is : $(pwd)\n"
	read -n1 -s -r -p $'Press g to git add commit push\n' key
	############################
	if [ "$key" = 'g' ]; then
		printf "pressed g so doiNg filling git add commit push /home/viml/mg/zw4s/hfont\n"
		cd /home/viml/mg/zw4s/hfont && printf "current directory is : $(pwd)\n"
		git add . ; git commit -am "mck82.vercel.app zikis8.vercel.app fb.com/ztrabc" ; git push
		cd /home/viml/mg/font
	else
		printf "pressed other key ${key} .  so not doiNg git-commiting. please do git add-commit-push /home/viml/mg/zw4s/hfont lateron \n"
	fi
else
	printf "/home/viml/mg/zw4s/hfont does not ekzist.\n"
fi
############################
if [ -d "/home/viml/mg/zw4s/sfd_hfont" ]; then
	printf "replaciNg old folders in sfd_hfont by niyu folders in /home/viml/mg/zw4s/sfd_hfont.\n"
	##### rm -rf /home/viml/mg/zw4s/sfd_hfont
	cp -r ${sfdpath}/* /home/viml/mg/zw4s/sfd_hfont/
	############################
	printf "current directory is : $(pwd)\n"
	read -n1 -s -r -p $'Press g to git add commit push\n' key
	############################
	if [ "$key" = 'g' ]; then
		printf "pressed g so doiNg filling git add commit push /home/viml/mg/zw4s/sfd_hfont\n"
		cd /home/viml/mg/zw4s/sfd_hfont && printf "now current directory is : $(pwd)\n"
		git add . ; git commit -am "mck82.vercel.app zikis8.vercel.app fb.com/ztrabc" ; git push
		cd /home/viml/mg/font
	else
		printf "pressed other key ${key} .  so not doiNg git-commiting. please do git add-commit-push /home/viml/mg/zw4s/sfd_hfont lateron \n"
	fi
else
	printf "/home/viml/mg/zw4s/sfd_hfont does not ekzist.\n"
fi
############################
if [ -d "/home/viml/mg/hpop/app/src/main/res/font/" ]; then
	printf "replaciNg old hfont by niyu hfont in /home/viml/mg/hpop/app/src/main/res/font/.\n"
	rm -rf /home/viml/mg/hpop/app/src/main/res/font/hfont
	cp -r ${daunlod_hfont_path} /home/viml/mg/hpop/app/src/main/res/font/
else
	printf "/home/viml/mg/hpop/app/src/main/res/font/ does not ekzist.\n"
fi
############################
if [ -d ${lifontspath} ]; then
	printf "replaciNg old woff2 folders by niyu in ${lifontspath}.\n"
	rm -rf ${lifontspath}/15m_woff2 ${lifontspath}/15_woff2 # ${lifontspath}/25_woff2 ${lifontspath}/4_woff2
	cp -r ${daunlod_hfont_path}/15m_woff2 ${daunlod_hfont_path}/15_woff2  ${lifontspath}/
	#cp -r ${daunlod_hfont_path}/15m_woff2 ${daunlod_hfont_path}/15_woff2 ${daunlod_hfont_path}/25_woff2 ${daunlod_hfont_path}/4_woff2 ${lifontspath}/
else
	printf "${lifontspath} does not ekzist.\n"
fi
############################
#if [ -d "~/.config/GIMP/2.10/fonts/" ]; then
	#cp -r daunlod/5 daunlod/8 ~/.config/GIMP/2.10/fonts/
#fi
#if [ -d "/usr/share/gimp/2.0/fonts/" ]; then
	#sudo cp -r daunlod/5 daunlod/8 /usr/share/gimp/2.0/fonts/
#fi
############################
	cd /home/viml/mg/font
	printf "current directory is : $(pwd)\n"
	read -n1 -s -r -p $'Press g to git add commit push\n' key
	############################
	if [ "$key" = 'g' ]; then
		printf "pressed g so doiNg filling git add commit push /home/viml/mg/zw4s/sfd_hfont\n"
		cd /home/viml/mg/font && printf "now current directory is : $(pwd)\n"
		git add . ; git commit -am "mck82.vercel.app zikis8.vercel.app fb.com/ztrabc" ; git push
		cd /home/viml/mg/font
	else
		printf "pressed other key ${key} .  so not doiNg git-commiting. please do git add-commit-push /home/viml/mg/zw4s/sfd_hfont lateron \n"
	fi
############################
