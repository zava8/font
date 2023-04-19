#!/bin/bash -i
#############################
read -p "old hinDi fonts hin*.ttf remove? [y,n]" rm_kro_kya 
case $rm_kro_kya in  
  y|Y)
     echo "yes old hinDi fonts hin*.ttf removing starts"
     rm /home/viml/.local/share/fonts/Monotype/hin5*.ttf
     rm /home/viml/.local/share/fonts/hin5*.ttf
     sudo rm /home/viml/.fonts/hin5*.ttf 
     sudo rm /root/.local/share/fonts/hin5*.ttf
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
     sudo cp /home/viml/mg/font/sfd/5/hin5*.ttf /root/.local/share/fonts/
     fc-cache -fv
     sudo fc-cache -fv
     ;;
esac
#############################
read -p "git commit ? [y,n]" git_kro_kya 
case $git_kro_kya in  
  y|Y)
     git add . ; git commit -am "fb.com/ztrabc tvitter.com/etphor" ; git push
     cd ~/mg/free/
     git add . ; git commit -am "fb.com/ztrabc tvitter.com/etphor" ; git push
     ;;
esac
###### D end ###############
text_content="
system font chenz to :
1. r // reset font
2. hin58 fontsize // hin58 12
3. hin5i fontsize // hin5i 12
"
printf "${text_content}"
read -p "system font chenz tu ??? " systemfont_cenz_to
printf "systemfont_cenz_to ki value ${systemfont_cenz_to} h."
#sleep 5
case "${systemfont_cenz_to}" in  
  r|R)
   printf "in case r|R) systemfont_cenz_to ki value ${systemfont_cenz_to} h."
   #sleep 4
   gsettings reset org.cinnamon.desktop.interface font-name
   gsettings reset org.gnome.desktop.interface font-name
   gsettings reset org.gnome.desktop.interface document-font-name
   gsettings reset org.gnome.desktop.interface monospace-font-name
   gsettings reset org.cinnamon.desktop.wm.preferences titlebar-uses-system-font
   gsettings reset org.cinnamon.desktop.wm.preferences titlebar-font
   gsettings reset org.gnome.desktop.wm.preferences titlebar-uses-system-font
   gsettings reset org.gnome.desktop.wm.preferences titlebar-font
   gsettings reset org.x.editor.preferences.editor use-default-font
   gsettings reset org.x.editor.preferences.editor editor-font
   gsettings reset org.nemo.desktop font
     ;;
  *)
   printf "\nin case *(default)systemfont_cenz_to ki value ${systemfont_cenz_to} h."
   #sleep 4
   gsettings set org.cinnamon.desktop.interface font-name "'${systemfont_cenz_to}'"
   gsettings set org.gnome.desktop.interface font-name "'${systemfont_cenz_to}'"
   gsettings set org.gnome.desktop.interface document-font-name "'${systemfont_cenz_to}'"
   gsettings set org.gnome.desktop.interface monospace-font-name 'hin58md 12'
   gsettings set org.cinnamon.desktop.wm.preferences titlebar-uses-system-font false
   gsettings set org.cinnamon.desktop.wm.preferences titlebar-font "'${systemfont_cenz_to}'"
   gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font false
   gsettings set org.gnome.desktop.wm.preferences titlebar-font "'${systemfont_cenz_to}'"
   gsettings set org.x.editor.preferences.editor use-default-font false
   gsettings set org.x.editor.preferences.editor editor-font "'${systemfont_cenz_to}'"
   gsettings set org.nemo.desktop font "'${systemfont_cenz_to}'"
     ;;
esac
echo "\nnao system fonts h:"
gsettings get org.cinnamon.desktop.interface font-name
gsettings get org.gnome.desktop.interface font-name
gsettings get org.gnome.desktop.interface document-font-name
gsettings get org.gnome.desktop.interface monospace-font-name
gsettings get org.cinnamon.desktop.wm.preferences titlebar-uses-system-font
gsettings get org.cinnamon.desktop.wm.preferences titlebar-font
gsettings get org.gnome.desktop.wm.preferences titlebar-uses-system-font
gsettings get org.gnome.desktop.wm.preferences titlebar-font
gsettings get org.x.editor.preferences.editor use-default-font
gsettings get org.x.editor.preferences.editor editor-font
gsettings get org.nemo.desktop font
########################
printf "firefox font settings select/change:\n"
./ffox_font_set.sh
########################
sudo cp ./zi /usr/share/X11/xkb/symbols/
setxkbmap zi
###### D end ###############
