#!/bin/bash -i
######
read -p "gsettings reset org.cinnamon.desktop.*.* run kre kya ? [y,Y,n]" run_kre_kya
case $run_kre_kya in
	y|Y)
		echo "yes org.cinnamon.desktop.*.*  gsetting reset start kr rhe h."
		gsettings reset org.cinnamon.desktop.interface font-name
		#gsettings reset org.cinnamon.desktop.wm.preferences titlebar-uses-system-font
		gsettings reset org.cinnamon.desktop.wm.preferences titlebar-font
		echo "org.cinnamon.desktop.*.*  gsetting get start kr rhe h."
		echo -n "org.cinnamon.desktop.interface font-name : "
		gsettings get org.cinnamon.desktop.interface font-name
		#echo "org.cinnamon.desktop.wm.preferences titlebar-uses-system-font : "
		#gsettings get org.cinnamon.desktop.wm.preferences titlebar-uses-system-font
		echo -n "org.cinnamon.desktop.wm.preferences titlebar-font : "
		gsettings get org.cinnamon.desktop.wm.preferences titlebar-font
	;;
esac
######
read -p "gsettings reset org.cinnamon.desktop.*.* run kre kya ? [y,Y,n]" run_kre_kya
case $run_kre_kya in
	y|Y)
		echo "yes org.gnome.desktop.*.*  gsetting reset start kr rhe h."
		gsettings reset org.gnome.desktop.interface font-name
		gsettings reset org.gnome.desktop.interface document-font-name
		gsettings reset org.gnome.desktop.interface monospace-font-name
		#gsettings reset org.gnome.desktop.wm.preferences titlebar-uses-system-font
		gsettings reset org.gnome.desktop.wm.preferences titlebar-font
		echo "org.gnome.desktop.*.*  gsetting get start kr rhe h."
		echo -n "org.gnome.desktop.interface font-name : "
		gsettings get org.gnome.desktop.interface font-name
		echo -n "org.gnome.desktop.interface document-font-name : "
		gsettings get org.gnome.desktop.interface document-font-name
		echo -n "org.gnome.desktop.interface monospace-font-name : "
		gsettings get org.gnome.desktop.interface monospace-font-name
		#echo "org.gnome.desktop.wm.preferences titlebar-uses-system-font : "
		#gsettings get org.gnome.desktop.wm.preferences titlebar-uses-system-font
		echo -n "org.gnome.desktop.wm.preferences titlebar-font : "
		gsettings get org.gnome.desktop.wm.preferences titlebar-font
	;;
esac
######
#read -p "gsettings reset org.nemo.desktop.*.* run kre kya ? [y,Y,n]" run_kre_kya
#case $run_kre_kya in
#	y|Y)
#		echo "yes org.nemo.desktop.*.*  gsetting reset start kr rhe h."
#		gsettings reset org.nemo.desktop font
#		echo "org.nemo.desktop.*.*  gsetting get start kr rhe h."
#		echo "org.nemo.desktop font : "
#		gsettings get org.nemo.desktop font
#	;;
#esac
######
read -p "gsettings reset org.x.editor.preferences.editor.* run kre kya ? [y,Y,n]" run_kre_kya
case $run_kre_kya in
	y|Y)
		echo "yes org.x.editor.preferences.editor.*  gsetting reset start kr rhe h."
		#gsettings reset org.x.editor.preferences.editor use-default-font
		gsettings reset org.x.editor.preferences.editor editor-font
		echo "org.x.editor.preferences.editor.*  gsetting get start kr rhe h."
		#echo -n "org.x.editor.preferences.editor use-default-font : "
		#gsettings get org.x.editor.preferences.editor use-default-font
		echo -n "org.x.editor.preferences.editor editor-font : "
		gsettings get org.x.editor.preferences.editor editor-font
	;;
esac
######
read -p "gsettings reset **** run kre kya ? [y,Y,n]" run_kre_kya
case $run_kre_kya in
	y|Y)
		echo "yes  **** gsetting reset start kr rhe h."
		gsettings reset com.github.maoschanz.drawing.tools-options last-font-name
		gsettings reset org.cinnamon.desktop.screensaver font-date
		gsettings reset org.cinnamon.desktop.screensaver font-message
		gsettings reset org.cinnamon.desktop.screensaver font-time
		gsettings reset org.gnome.libgnomekbd.indicator font-family
		gsettings reset org.onboard key-label-font
		gsettings reset org.onboard.theme-settings key-label-font
		gsettings reset org.x.editor.preferences.print print-font-header-pango
		gsettings reset org.x.editor.preferences.print print-font-numbers-pango
		gsettings reset org.x.pix.image-print font-name
		gsettings reset org.x.pix.image-print footer-font-name
		gsettings reset org.x.pix.image-print header-font-name
		gsettings reset org.x.sticky font
		gsettings reset x.dm.slick-greeter font-name
		##############
		gsettings reset org.cinnamon.desktop.interface font-name
		gsettings reset org.cinnamon.desktop.wm.preferences titlebar-font
		gsettings reset org.gnome.desktop.interface document-font-name
		gsettings reset org.gnome.desktop.interface font-name
		gsettings reset org.gnome.desktop.interface monospace-font-name
		gsettings reset org.gnome.desktop.wm.preferences titlebar-font
		gsettings reset org.x.editor.preferences.editor editor-font
		######
		gsettings reset org.x.editor.preferences.print print-font-body-pango
		gsettings reset org.x.viewer.plugins.pythonconsole font
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
		echo -n "org.gnome.desktop.interface monospace-font-name : "
		gsettings get org.gnome.desktop.interface monospace-font-name
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
