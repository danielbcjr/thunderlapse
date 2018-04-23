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
  echo "########################################################################"
  echo "################       Cloning ThunderLapse Repo.     ##################"
  echo "################ PLEASE, REPORT ERRORS AND BUGS HERE: ##################"
  echo "################        http://goo.gl/2ydZa1          ##################"
  echo "########################################################################"

git clone https://github.com/danielbcjr/thunderlapse.git
cd thunderlapse/Script
mv thunderlapse.sh /usr/bin/thunderlapse
chmod +x /usr/bin/thunderlapse
cd ..
cd ..
rm -rf thunderlapse/

clear

 echo "########################################################################"
 echo "################      ThunderLapse Installed =D       ##################"
 echo "################      Now you can use the command     ##################"
 echo "################      'thunderlapse' in your system   ##################"
 echo "################      with your non root user         ##################"
 echo "################ PLEASE, REPORT ERRORS AND BUGS HERE: ##################"
 echo "################        http://goo.gl/2ydZa1          ##################"
 echo "########################################################################"


