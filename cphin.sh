#!/bin/bash
#############################
read -p "old hinDi fonts hin*.ttf remove? [y,n]" rm_kro_kya 
case $rm_kro_kya in  
  y|Y)
     echo "yes old hinDi fonts hin*.ttf removing starts"
     rm /home/viml/.local/share/fonts/Monotype/hin5*.ttf
     rm /home/viml/.local/share/fonts/hin5*.ttf
     sudo rm /home/viml/.fonts/hin5*.ttf 
     sudo rm /usr/local/share/fonts/hin5*.ttf 
     sudo rm /usr/share/fonts/truetype/hscii/hin5*.ttf 
     sudo rm /usr/share/gimp/2.0/fonts/hin5*.ttf 
     sudo rm /home/viml/.config/GIMP/2.10/fonts/hin5*.ttf 
     echo yes old hinDi fonts hin*.ttf removing ends
     ;; 
  n|N) echo no ;; 
  *) echo dont know ;; 
esac
############################
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/free/font/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/dounload/font/5/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/font/daunlod/5/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/hpop/app/src/main/res/font/
cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/mg/si_hpop/app/src/main/res/font/
############################
read -p "hin5*.ttf install ? [y,n]" instal_kro_kya 
case $instal_kro_kya in  
  y|Y)
     echo "yes old hinDi fonts hin*.ttf removing starts"
     cp /home/viml/mg/font/sfd/5/hin5*m.ttf /home/viml/.local/share/fonts/Monotype/
     cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.local/share/fonts/
     sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.fonts/
     sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/local/share/fonts/
     sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/share/fonts/truetype/hscii/
     sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /usr/share/gimp/2.0/fonts/
     sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /home/viml/.config/GIMP/2.10/fonts/
     fc-cache -fv
     sudo fc-cache -fv
#############################
     git add . ; git commit -am "fb.com/ztrabc tvitter.com/etphor" ; git push
     cd ~/mg/free/
     git add . ; git commit -am "fb.com/ztrabc tvitter.com/etphor" ; git push
     ;;
esac
###### D end ###############
