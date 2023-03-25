#!/bin/bash
#############################
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/free/font/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/dounload/font/5/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/font/daunlod/5/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/hpop/app/src/main/res/font/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/si_hpop/app/src/main/res/font/
#############################
cp /home/viml/mg/font/sfd/5/hin5*m.ttf /home/viml/.local/share/fonts/Monotype/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.local/share/fonts/
#############################
fc-cache -fv
#############################
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.fonts/
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/local/share/fonts/
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/share/fonts/truetype/hscii/
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/share/gimp/2.0/fonts/
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.config/GIMP/2.10/fonts/
#############################
sudo fc-cache -fv
#############################
git add . ; git commit -am "fb.com/ztrabc tvitter.com/etphor" ; git push
cd ~/mg/free/
git add . ; git commit -am "fb.com/ztrabc tvitter.com/etphor" ; git push
###### D end ###############
