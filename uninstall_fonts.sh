#!/bin/bash -i
#############################
read -p "old 5*/58 (d/u/m/b1) remove? [y,n]" rm_kro_kya 
case $rm_kro_kya in  
  y|Y)
     echo "yes old hinDi fonts hin*.ttf removing starts"
     rm ~/.local/share/fonts/Monotype/*5*.ttf
     rm ~/.local/share/fonts/*5*.ttf
     sudo rm ~/.fonts/*5*.ttf 
     sudo rm /root/.local/share/fonts/*5*.ttf
     sudo rm /usr/local/share/fonts/*5*.ttf 
     sudo rm /usr/share/fonts/truetype/hscii/*5*.ttf 
     sudo rm /usr/share/gimp/2.0/fonts/*5*.ttf 
     sudo rm ~/.config/GIMP/2.10/fonts/*5*.ttf 
     echo yes old hinDi fonts hin*.ttf removing ends
     ;; 
  n|N) echo no ;; 
  *) echo dont know ;; 
esac
############################
