#!/bin/bash

select ffoxfont in hin58 tmil58 kannada58 telugu58 mlyalm58 odia58 guz58 pnzabi58 bangla58 default_font
do
   printf "selected ffoxfont ki value ${ffoxfont} h.\n"
   for f in ~/.mozilla/firefox/*.default* ; do
         cp ./user_dfont.js "${f}/"
         cp ./user_hin58.js "${f}/"
         cp ./user_odia58.js "${f}/"
         cp ./user_bangla58.js "${f}/"
         cp ./user_guz58.js "${f}/"
         cp ./user_pnzabi58.js "${f}/"
         cp ./user_kannada58.js "${f}/"
         cp ./user_mlyalm58.js "${f}/"
         cp ./user_tmil58.js "${f}/"
         cp ./user_telugu58.js "${f}/"
         if [[ $(ls ${f}/user.js) ]]
         then
            printf "${f}/user.js yes present\n"
            cp ${f}/user.js ${f}/user_last.js
         else
            printf "${f}/user.js not present\n"
         fi
         case ${ffoxfont} in
         default_font)
               printf "in default_font case: ffoxfont is ${ffoxfont}\n";
               ls ${f}/user_dfont.js
               cp ${f}/user_dfont.js ${f}/user.js
            ;;
         *)
               printf "in *default ffoxfont is ${ffoxfont}\n";
               ls ${f}/user_${ffoxfont}.js
               cp ${f}/user_${ffoxfont}.js ${f}/user.js
            ;;
         esac
         printf "nao ${f}/user.js  is :\n"
         cat ${f}/user.js
   done
   break;
done

