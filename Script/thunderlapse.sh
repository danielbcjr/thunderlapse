#!/bin/bash
clear
  echo "########################################################################"
  echo "################            ThunderLapse   V1.0       ##################"
  echo "################ PLEASE, REPORT ERRORS AND BUGS HERE: ##################"
  echo "################        http://goo.gl/2ydZa1          ##################"
  echo "########################################################################"


echo "Please give the path of photos folder (all JPGs images there will be added to the video:"
  read PA

echo "Choose Scale option:"
  echo "1 - 4k (3840:2160):"
  echo "2 - 1920:1080 :"
  echo "3 - 720:405 :"
  echo "4 - 480:360 :"
  echo "5 - Custom Scale:"
  read RESO

  if [[ ${RESO} == 5 ]];then
    echo "Custom Resolution:"
    read CUS
    SCALE=${CUS}
  fi

  if [[ ${RESO} == 2 ]];then
    SCALE="3840:2160"
  fi

  if [[ ${RESO} == 1 ]];then
    SCALE="1920:1080"
  fi

  if [[ ${RESO} == 3 ]];then
     SCALE="720:405"
  fi

  if [[ ${RESO} == 4 ]];then
     SCALE="640:360"
  fi

echo ""
echo "FPS:"
read FPS

echo ""

echo "Video name:"
read NAME

clear

  echo "########################################################################"
  echo "################            ThunderLapse   V1.0       ##################"
  echo "################ PLEASE, REPORT ERRORS AND BUGS HERE: ##################"
  echo "################        http://goo.gl/2ydZa1          ##################"
  echo "########################################################################"
	  

CD ${PA}
ls -1v | grep JPG > .files.txt

mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=21600000 -o ${PA}/${NAME}.avi -mf type=jpeg:fps=${FPS} mf://@.files.txt -vf scale=${SCALE}

NUMBER=$(cat .files.txt| wc -l)
echo ""

echo "Path: ${PA}"
echo "Scale: ${SCALE}"
echo "FPS: ${FPS}"
echo "Number of images: ${NUMBER}"
echo "Video name: ${NAME}.avi"
echo "File info:"
ls -ltrah ${PA}/${NAME}.avi

echo ""

  echo "########################################################################"
  echo "################            ThunderLapse   V1.0       ##################"
  echo "################          PLEASE GIVE US A STAR =D    ##################"
  echo "################ https://github.com/danielbcjr/thunderlapse  ###########"
  echo "################     REPORT ERRORS AND BUGS HERE:     ##################"
  echo "################        http://goo.gl/2ydZa1          ##################"
  echo "########################################################################"



