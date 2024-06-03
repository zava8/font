#!/bin/bash -i
#############################
text_content="
system font chenz to :
1. r // reset font
2. tmil58 fontsize // tmil58 18
3. kannada58 fontsize // kannada58 18
4. odia58 fontsize // odia58 18
5. mlyalm58 fontsize // mlyalm58 18
6. telugu58 fontsize // telugu58 18
8. bangla58 fontsize // bangla58 18
9. guz58 fontsize // guz58 18
L. pnzabi58 fontsize // pnzabi58 18
J. hin58 fontsize // hin58 18
"
printf "${text_content}"
read -p "system font change to ??? " systemfont_change_to
printf "systemfont_change_to ki value ${systemfont_change_to} h."
case "${systemfont_change_to}" in  
	r|R)
		printf "in case r|R) systemfont_change_to ki value ${systemfont_change_to} h."
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
   printf "\nin case *(default)systemfont_change_to ki value ${systemfont_change_to} h."
   #sleep 4
   gsettings set org.cinnamon.desktop.interface font-name "'${systemfont_change_to}'"
   gsettings set org.gnome.desktop.interface font-name "'${systemfont_change_to}'"
   gsettings set org.gnome.desktop.interface document-font-name "'${systemfont_change_to}'"
   gsettings set org.gnome.desktop.interface monospace-font-name 'hin58m 16'
   gsettings set org.cinnamon.desktop.wm.preferences titlebar-uses-system-font false
   gsettings set org.cinnamon.desktop.wm.preferences titlebar-font "'${systemfont_change_to}'"
   gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font true
   gsettings set org.gnome.desktop.wm.preferences titlebar-font "'${systemfont_change_to}'"
   gsettings set org.x.editor.preferences.editor use-default-font false
   gsettings set org.x.editor.preferences.editor editor-font "'${systemfont_change_to}'"
   gsettings set org.nemo.desktop font "'${systemfont_change_to}'"
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
###### D end ###############
