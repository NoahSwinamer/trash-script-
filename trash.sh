 #!/bin/bash

echo to start press ctrl+c 
#to start the script press ctrl+c
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3 4 5
exec 1>log.out 2>&1

lsb_release -a
#For Loging Distributor ID and Description and Release and Codename
uname -mrs
#For Loging Kernel name and Kernel version number and Machine hardware name
echo /.local/share/Trash/files/
#The Directory to Trash Files  
ls -l ~/.local/share/Trash/files/
#For Loging Number of Trash Files 
   
echo /.local/share/Trash/info/
#The Directory to Trash info  
ls -l ~/.local/share/Trash/info/
#For Loging Number of Trash info Files



for (( ; ; ))
do
sleep 40
# is Sleep 40 Second

echo $(rm -rf ~/.local/share/Trash/files/*)
echo /.local/share/Trash/files/ 
ls -l ~/.local/share/Trash/files/

echo $(rm -rf ~/.local/share/Trash/info/*)
echo /.local/share/Trash/info/ 
ls -l ~/.local/share/Trash/files/

echo to exit ctrl+z
#to exit the script press ctrl+z

done
