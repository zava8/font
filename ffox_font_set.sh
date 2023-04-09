#!/bin/bash

select ffoxfont in hin58d default_font
do
   printf "ffoxfont is ${ffoxfont}\n"
   for f in ~/.mozilla/firefox/*.default* ; do
         cp ./user_dfont.js "${f}/"
         cp ./user_hin58d.js "${f}/"
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

