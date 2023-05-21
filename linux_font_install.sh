#!/bin/bash -i
############################
read -p "*5*.ttf install ? [y,n]" instal_kro_kya 
case $instal_kro_kya in  
  y|Y)
     echo "*5*.ttf usr/local/fonts se remove starts"
     rm ~/.local/share/fonts/Monotype/*5*.ttf
     rm ~/.local/share/fonts/*5*.ttf
     sudo rm ~/.fonts/*5*.ttf 
     sudo rm /root/.local/share/fonts/*5*.ttf
     sudo rm /usr/local/share/fonts/*5*.ttf 
     sudo rm /usr/share/fonts/truetype/hscii/*5*.ttf 
     sudo rm /usr/share/gimp/2.0/fonts/*5*.ttf 
     sudo rm ~/.config/GIMP/2.10/fonts/*5*.ttf 
     echo "*5*.ttf usr/local/fonts se remove ends"
     #################################
     sleep 2
     #################################
     echo "*5*.ttf ko system/usr/local ke fonts foldr me copy starts"
     cp ~/mg/font/sfd/5/ttf/*5m*.ttf ~/.local/share/fonts/Monotype/
     cp ~/mg/font/sfd/5/ttf/*5*.ttf ~/.local/share/fonts/
     sudo cp ~/mg/font/sfd/5/ttf/*5*.ttf ~/.fonts/
     sudo cp ~/mg/font/sfd/5/ttf/*5*.ttf /usr/local/share/fonts/
     sudo cp ~/mg/font/sfd/5/ttf/*5*.ttf /usr/share/fonts/truetype/hscii/
     sudo cp ~/mg/font/sfd/5/ttf/*5*.ttf /usr/share/gimp/2.0/fonts/
     sudo cp ~/mg/font/sfd/5/ttf/*5*.ttf ~/.config/GIMP/2.10/fonts/
     sudo cp ~/mg/font/sfd/5/ttf/*5*.ttf /root/.local/share/fonts/
     echo "*5*.ttf ko system/usr/local ke fonts foldr me copy ends"
     fc-cache -fv
     sudo fc-cache -fv
     ;;
esac
###### D end ###############
