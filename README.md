# ThunderLapse :movie_camera:
## Time Lapse script to GoPro Linux users 

### Script to automatically do videos from a lot of time lapse images. :bowtie:


**Hi guys, I did this project to help people who has Linux systems to make Time Lapse videos :movie_camera: from a lot of images. I started it cos it was difficult and laborious to find some thing in internet that really works good.**

I used this, cos I saw [here](https://superuser.com/questions/249101/how-can-i-combine-30-000-images-into-a-timelapse-movie):
> -nosound -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=21600000 

I really apreciate people who can colaborate and help to impruve the project. :grin:

**################ PLEASE, REPORT ERRORS AND BUGS [HERE](http://goo.gl/2ydZa1): ##################**


###### All you need here are this packages to be installed in Ubuntu:
> - ffmpeg
> - x264
> - libx264-dev

But dont worry, install script will do all for you :heart_eyes:


## Installation :orange_book:

###### In Ubuntu and Debian you can use this line as root user in terminal shell:
`bash <(curl -s https://raw.githubusercontent.com/danielbcjr/thunderlapse/master/Instalation/install_ubuntu.sh)`

or...

> Download this [file](https://raw.githubusercontent.com/danielbcjr/thunderlapse/master/Instalation/install_ubuntu.sh) and execute it in your machine as root:
`bash install_ubuntu.sh`



*In RedHat I'll test and put here the name of packages (maybe are the same) soon or if you already installed in RedHat ou CentOS, please, be part of thi project ans share with us =D*


## How to use?
In your system terminal, with your system user, type:
`thunderlapse`

The script will ask for images path, the folder where are all your JPGs images:
>Please give the path of photos folder (all JPGs images there will be added to the video:
`/home/user/Imagens/1_night_lapse`

After that, you waill inform the scale of the video:
>Choose Scale option:
>1 - 4k (3840:2160):
>2 - 1920:1080 :
>3 - 720:405 :
>4 - 480:360 :
>5 - Custom Scale:
`1`

Now Frames per second:
>FPS:
`20`

Finally, the name of the video, just the name, without extention:
>Video name:
`starts`

#### In the end of compilation, you will be see information about your video:
`Video stream: 6296.988 kbit/s  (787123 B/s)  size: 12712044 bytes  16.150 secs  324 frames`

`Path: /home/thunderstruckz/Imagens/1_night_lapse`
`Scale: 1920:1080`
`FPS: 20`
`Number of images: 323`
`Video name: starts.avi`
>File info:
`-rw-rw-r-- 1 user user 13M abr 22 22:51 /home/user/Imagens/1_night_lapse/starts.avi`



