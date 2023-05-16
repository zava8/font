#!/bin/bash -i
############################
read -p "*5*.ttf install ? [y,n]" instal_kro_kya 
case $instal_kro_kya in  
  y|Y)
     echo "yes old hinDi fonts hin*.ttf removing starts"
     cp ~/mg/font/sfd/5/*5m*.ttf ~/.local/share/fonts/Monotype/
     cp ~/mg/font/sfd/5/*5*.ttf ~/.local/share/fonts/
     sudo cp ~/mg/font/sfd/5/*5*.ttf ~/.fonts/
     sudo cp ~/mg/font/sfd/5/*5*.ttf /usr/local/share/fonts/
     sudo cp ~/mg/font/sfd/5/*5*.ttf /usr/share/fonts/truetype/hscii/
     sudo cp ~/mg/font/sfd/5/*5*.ttf /usr/share/gimp/2.0/fonts/
     sudo cp ~/mg/font/sfd/5/*5*.ttf ~/.config/GIMP/2.10/fonts/
     sudo cp ~/mg/font/sfd/5/*5*.ttf /root/.local/share/fonts/
     fc-cache -fv
     sudo fc-cache -fv
     ;;
esac
#############################
