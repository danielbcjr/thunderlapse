#!/bin/bash

#Are the packages installed?
clear
echo "########################################################################"
echo "###################### CHECKING PACKAGES... ############################"
echo "########################################################################"

dpkg -s ffmpeg
FFMPEG=$(echo $?)

dpkg -s x264
X264=$(echo $?)

dpkg -s libx264-dev
LIBX264=$(echo $?)

dpkg -s mencoder
MENCODER=$(echo $?)

dpkg -s git
GIT=$(echo $?)


if [[ ${FFMPEG} == 1  ]]; then
  echo "########################################################################"
  echo "################# FFMPEG not found, Installing... ######################"
  echo "########################################################################"
  apt-get update
  apt-get install -y ffmpeg
fi

if [[ ${X264} == 1  ]]; then
  echo "########################################################################"
  echo "################ X264 not found, Installing...##########################"
  echo "########################################################################"
  apt-get update
  apt-get install -y x264
fi

if [[ ${LIBX264} == 1  ]]; then
  echo "########################################################################"
  echo "################ LIBX264 not found, Installing... ######################"
  echo "########################################################################"
  apt-get update
  apt-get install -y libx264-dev
fi

if [[ ${MENCODER} == 1  ]]; then
  echo "########################################################################"
  echo "################ MENCODER not found, Installing... #####################"
  echo "########################################################################"
  apt-get update
  apt-get install -y mencoder
fi

if [[ ${GIT} == 1  ]]; then
  echo "########################################################################"
  echo "################ MENCODER not found, Installing... #####################"
  echo "########################################################################"
  apt-get update
  apt-get install -y git
fi


  echo "########################################################################"
  echo "################ Packages found! Installing ThunderLapse scripts. ######"
  echo "########################################################################"
      
#Gitclone script
git clone https://github.com/danielbcjr/thunderlapse.git
cd thunderlapse/Script
mv thunderlapse.sh /usr/bin/thunderlapse
chmod +x /usr/bin/thunderlapse




