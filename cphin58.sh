#!/bin/bash
echo "cp to free" 
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/free/font/
#############
echo "cp to gimp2" 
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/share/gimp/2.0/fonts/
echo "cp to gimp210" 
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.config/GIMP/2.10/fonts/
echo "cp to .fonts" 
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.fonts/
echo "cp to ..local/share/fonts" 
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.local/share/fonts/
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.local/share/fonts/Monotype/
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/share/fonts/truetype/hscii/
sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/local/share/fonts/
# 54
sudo fc-cache -fv
fc-cache -fv
git add . ; git commit -am "fb.com/ztrabc tvitter.com/etphor" ; git push
cd ~/mg/free/
git add . ; git commit -am "fb.com/ztrabc tvitter.com/etphor" ; git push
