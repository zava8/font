#!/bin/bash
###### start ###############
read -p "system font chenz yes no reset ? [y,n,r]" systemfont_cenz_kro_kya 
case $systemfont_cenz_kro_kya in  
  y|Y)
   gsettings set org.cinnamon.desktop.interface font-name 'hin58 12'
   gsettings set org.gnome.desktop.interface font-name 'hin58 12'
   gsettings set org.gnome.desktop.interface document-font-name 'hin58 12'
   gsettings set org.gnome.desktop.interface monospace-font-name 'hin58m 12'
   gsettings set org.cinnamon.desktop.wm.preferences titlebar-uses-system-font false
   gsettings set org.cinnamon.desktop.wm.preferences titlebar-font 'hin58 12'
   gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font false
   gsettings set org.gnome.desktop.wm.preferences titlebar-font 'hin58 10'
   gsettings set org.x.editor.preferences.editor use-default-font false
   gsettings set org.x.editor.preferences.editor editor-font 'hin58 14'
   gsettings set org.nemo.desktop font 'hin58 12'
     ;;
  r|R)
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
esac
echo "nao system fonts h:"
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
###### D end ###############
