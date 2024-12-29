#!/bin/bash -i
######
text_content="
system font chenz to :
1. r // reset font
2. tmil5
3. kannada5
4. odia5
5. mlyalm5
6. telugu5
8. bangla5
9. guz5
L. pnzabi5
J. hin5
B. ing5
"
printf "${text_content}"
read -p "system font change to ??? " systemfont_change_to
printf "systemfont_change_to ki value ${systemfont_change_to} h."
case "${systemfont_change_to}" in 
	r|R)
		printf "in case r|R) systemfont_change_to ki value ${systemfont_change_to} h."
	;;
	*)
		printf "\nin case *(default)systemfont_change_to ki value ${systemfont_change_to} h."
		echo "yes org.cinnamon.desktop.*.*  gsetting set start kr rhe h."
###org.cinnamon.desktop.interface font-name : 'Ubuntu 10'
		gsettings set org.cinnamon.desktop.interface font-name "'${systemfont_change_to}' 10"
###org.cinnamon.desktop.wm.preferences titlebar-font : 'Ubuntu Medium 10'
		gsettings set org.cinnamon.desktop.wm.preferences titlebar-font "'${systemfont_change_to}' 10"
		echo "org.cinnamon.desktop.*.*  gsetting get start kr rhe h."
		echo -n "org.cinnamon.desktop.interface font-name : "
		gsettings get org.cinnamon.desktop.interface font-name
		echo -n "org.cinnamon.desktop.wm.preferences titlebar-font : "
		gsettings get org.cinnamon.desktop.wm.preferences titlebar-font
		echo "yes org.gnome.desktop.*.*  gsetting set start kr rhe h."
###org.gnome.desktop.interface font-name : 'Ubuntu 10'
		gsettings set org.gnome.desktop.interface font-name "'${systemfont_change_to}' 10"
###org.gnome.desktop.interface document-font-name : 'Sans 10'
		gsettings set org.gnome.desktop.interface document-font-name "'${systemfont_change_to}' 10"
###gsettings set org.gnome.desktop.interface monospace-font-name "'${systemfont_change_to}' 10"
###org.gnome.desktop.wm.preferences titlebar-font : 'Ubuntu Medium 10'
		gsettings set org.gnome.desktop.wm.preferences titlebar-font "'${systemfont_change_to}' 10"
		echo "org.gnome.desktop.*.*  gsetting get start kr rhe h."
		echo -n "org.gnome.desktop.interface font-name : "
		gsettings get org.gnome.desktop.interface font-name
		echo -n "org.gnome.desktop.interface document-font-name : "
		gsettings get org.gnome.desktop.interface document-font-name
		###echo -n "org.gnome.desktop.interface monospace-font-name : "
		###gsettings get org.gnome.desktop.interface monospace-font-name
		#echo "org.gnome.desktop.wm.preferences titlebar-uses-system-font : "
		#gsettings get org.gnome.desktop.wm.preferences titlebar-uses-system-font
		#gsettings set org.x.editor.preferences.editor use-default-font
		echo -n "org.gnome.desktop.wm.preferences titlebar-font : "
		gsettings get org.gnome.desktop.wm.preferences titlebar-font
		echo "yes org.x.editor.preferences.editor.*  gsetting set start kr rhe h."	
######org.x.editor.preferences.editor editor-font : 'Monospace 12'	
		#gsettings set org.x.editor.preferences.editor editor-font "'${systemfont_change_to}' 10"
		#echo "org.x.editor.preferences.editor.*  gsetting get start kr rhe h."
		echo -n "org.x.editor.preferences.editor use-default-font : "
		gsettings get org.x.editor.preferences.editor use-default-font
		echo -n "org.x.editor.preferences.editor editor-font : "
		gsettings get org.x.editor.preferences.editor editor-font
		echo "yes  **** gsetting set start kr rhe h."
		gsettings set com.github.maoschanz.drawing.tools-options last-font-name  "'${systemfont_change_to}' 10"
		gsettings set org.cinnamon.desktop.screensaver font-date  "'${systemfont_change_to}' 10"
		gsettings set org.cinnamon.desktop.screensaver font-message  "'${systemfont_change_to}' 10"
		gsettings set org.cinnamon.desktop.screensaver font-time  "'${systemfont_change_to}' 10"
		gsettings set org.gnome.libgnomekbd.indicator font-family  "'${systemfont_change_to}' 10"
		gsettings set org.onboard key-label-font  "'${systemfont_change_to}' 10"
		gsettings set org.onboard.theme-settings key-label-font  "'${systemfont_change_to}' 10"
		gsettings set org.x.editor.preferences.print print-font-header-pango  "'${systemfont_change_to}' 10"
		gsettings set org.x.editor.preferences.print print-font-numbers-pango  "'${systemfont_change_to}' 10"
		gsettings set org.x.pix.image-print font-name  "'${systemfont_change_to}' 10"
		gsettings set org.x.pix.image-print footer-font-name  "'${systemfont_change_to}' 10"
		gsettings set org.x.pix.image-print header-font-name  "'${systemfont_change_to}' 10"
		gsettings set org.x.sticky font  "'${systemfont_change_to}' 10"
		gsettings set x.dm.slick-greeter font-name  "'${systemfont_change_to}' 10"
		##############
		gsettings set org.cinnamon.desktop.interface font-name  "'${systemfont_change_to}' 10"
		gsettings set org.cinnamon.desktop.wm.preferences titlebar-font  "'${systemfont_change_to}' 10"
		gsettings set org.gnome.desktop.interface document-font-name  "'${systemfont_change_to}' 10"
		gsettings set org.gnome.desktop.interface font-name  "'${systemfont_change_to}' 10"
		#gsettings set org.gnome.desktop.interface monospace-font-name  "'${systemfont_change_to}' 10"
		gsettings set org.gnome.desktop.wm.preferences titlebar-font  "'${systemfont_change_to}' 10"
		gsettings set org.x.editor.preferences.editor editor-font  "'${systemfont_change_to}' 10"
		######
		gsettings set org.x.editor.preferences.print print-font-body-pango  "'${systemfont_change_to}' 10"
		gsettings set org.x.viewer.plugins.pythonconsole font  "'${systemfont_change_to}' 10"
		######
		echo " **** gsetting get start kr rhe h."
		echo -n "com.github.maoschanz.drawing.tools-options last-font-name : "
		gsettings get com.github.maoschanz.drawing.tools-options last-font-name
		echo -n "org.cinnamon.desktop.screensaver font-date : "
		gsettings get org.cinnamon.desktop.screensaver font-date
		echo -n "org.cinnamon.desktop.screensaver font-message : "
		gsettings get org.cinnamon.desktop.screensaver font-message
		echo -n "org.cinnamon.desktop.screensaver font-time : "
		gsettings get org.cinnamon.desktop.screensaver font-time
		echo -n "org.gnome.libgnomekbd.indicator font-family : "
		gsettings get org.gnome.libgnomekbd.indicator font-family
		echo -n "org.onboard key-label-font : "
		gsettings get org.onboard key-label-font
		echo -n "org.onboard.theme-settings key-label-font : "
		gsettings get org.onboard.theme-settings key-label-font
		echo -n "org.x.editor.preferences.print print-font-header-pango : "
		gsettings get org.x.editor.preferences.print print-font-header-pango
		echo -n "org.x.editor.preferences.print print-font-numbers-pango : "
		gsettings get org.x.editor.preferences.print print-font-numbers-pango
		echo -n "org.x.pix.image-print font-name : "
		gsettings get org.x.pix.image-print font-name
		echo -n "org.x.pix.image-print footer-font-name : "
		gsettings get org.x.pix.image-print footer-font-name
		echo -n "org.x.pix.image-print header-font-name : "
		gsettings get org.x.pix.image-print header-font-name
		echo -n "org.x.sticky font : "
		gsettings get org.x.sticky font
		echo -n "x.dm.slick-greeter font-name : "
		gsettings get x.dm.slick-greeter font-name
		##############
		echo -n "org.cinnamon.desktop.interface font-name : "
		gsettings get org.cinnamon.desktop.interface font-name
		echo -n "org.cinnamon.desktop.wm.preferences titlebar-font : "
		gsettings get org.cinnamon.desktop.wm.preferences titlebar-font
		echo -n "org.gnome.desktop.interface document-font-name : "
		gsettings get org.gnome.desktop.interface document-font-name
		echo -n "org.gnome.desktop.interface font-name : "
		gsettings get org.gnome.desktop.interface font-name
		#echo -n "org.gnome.desktop.interface monospace-font-name : "
		#gsettings get org.gnome.desktop.interface monospace-font-name
		echo -n "org.gnome.desktop.wm.preferences titlebar-font : "
		gsettings get org.gnome.desktop.wm.preferences titlebar-font
		echo -n "org.x.editor.preferences.editor editor-font : "
		gsettings get org.x.editor.preferences.editor editor-font
		######
		echo -n "org.x.editor.preferences.print print-font-body-pango : "
		gsettings get org.x.editor.preferences.print print-font-body-pango
		echo -n "org.x.viewer.plugins.pythonconsole font : "
		gsettings get org.x.viewer.plugins.pythonconsole font
	;;
esac
######
### printf [-v var] [format specifiers] [arguments]
