#!/bin/bash -i
#############################
read -p "git commit ? [y,n]" git_kro_kya 
case $git_kro_kya in  
  y|Y)
     git add . ; git commit -am "fb.com/ztrabc" ; git push
     cd ~/mg/free/
     git add . ; git commit -am "fb.com/ztrabc" ; git push
     cd ~/mg/zava8.github.io/
     git add . ; git commit -am "fb.com/ztrabc" ; git push
     cd ~/mg/font/
     ;;
esac
###### D end ###############
