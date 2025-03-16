### use Aur instal krne ke steps (steps phur use & installation)
-------

##### 1) [unicase_phonts repozitory](https://github.com/Font77/unicase_phonts) dounlod kre ya git clone kre.
```
   1. click clone(green) button -> click "dounlod zip"
   (or / ya phir apke pc me git install h To ap clone kr skTe h)
   2. git clone https://github.com/Font77/unicase_phonts.git
   3. AgAr zip dounload kiye h To unzip krke unicase_phonts pholdr prapT kiziyega
   4. check kre unicase_phonts/yunikes pholder me u5cdot.ttf .ttf files h. ye phonts file h. inko vindouz/linuks/Android me install krTe h.
```
------
##### install in vindoz/linuks , phayrphoks
<table style="width:100%">
<tr> <td>[install u5cdot.ttf in vindoz](./vindoz_install.md)</td> </tr>
<tr> <td>[install u5cdot.ttf in linuks mint](./linuks_install.md)</td></tr>
<tr> <td>[install u5cdot.ttf in phayrphoks brauzr](./mozilla_u5cdot.md)</td></tr>
</table>
------

##### 2) vindouz me instal krne ke steps :
```
  1. unicase_phonts/yunikes folder me zaiyega.
  2. sbhi phonts (.ttf file) ko right_click->install as admin-> kiziyega
  3. AgAr aap ko koi smAsya aaTi h Toh [vindouz support vizit kre](https://support.microsoft.com/en-us/topic/download-and-install-custom-fonts-to-use-with-office-0ee09e74-edc1-480c-81c2-5cf9537c70ce)
```

##### 3) steps phur installation in linuks mint :[help/support](https://blog.softhints.com/add-new-fonts-in-linux-mint/)
1. terminal ke $> prompt me "sudo apt-get install font-manager" command run kiziyega.
1. unicase_phonts/yunikes folder me zaiyega.
3. u5cdot.ttf pr mouse krsr lezakr right klick kiziyega.
![](./imez/right_click_root.png)
4. yhi(same) pholder root access ke saTh khul zaega.
5. isme right_click krke font_maneger me open kre.
![](./imez/root_open_font_manager.png)
6. **u5cdot.ttf** root_open_font_manager ke saTh instal kiziye.
![](./imez/font_manager_install.png)
7. isi Trh sbhi fonts ko install kiziyega.
8. unicase_phonts/yunikes me sari *.ttf files ko select krke copy kre.
9. nya tab khole Aur usme /usr/share/fonts/truetype khole
10. isme yunikes pholder bnaiyega Aur usme zakr copy kiye hue phonts ko paste kiziyega
11. nya tab khole Aur usme ~/.local/share/fonts khole
10. isme **yunikes** pholder bnaiyega Aur usme zakr copy kiye hue phonts ko paste kiziyega
11. run phont cache **sudo fc-cache -f -v** command
12. run phont cache **fc-cache -f -v** command
11. AgAr aap ko koi smAsya aaTi h Toh ["linux mint font install" duckduckgo.com me search kre](https://blog.softhints.com/add-new-fonts-in-linux-mint/)
-------
### steps phur installation in linuks mozilla phayrphoks
![][i1]
1. go tu settings by clicking  **gear like button in right** .
1. search fonts in  **find in preferences search boks** .
1. click **Advanced** button .
1. latin/other/bengali/telugu/punzabi/.... sbhi ke liye u5cdot phont uze kiziyega. bengali screenshot.
![](./imez/u5cdot_bNgali.png)
1. u5cdot_pnzabi_gurumukhi screenshot.
![](./imez/u5cdot_pnzabi_gurumukhi.png)
1. u5cdot_oriya.png  screenshot.
![](./imez/u5cdot_oriya.png)
----------


[1]: github.com/font77/unicase_phonts
[i1]: imez/phayrphoks_settings.gif
[i2]: imez/Advanced_phonts.png
