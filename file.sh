#!/bin/bash
 
read -p "C:\Users\manas\OneDrive\Documents : " THE_PATH
 
if [ -d $THE_PATH ]
then
        echo "$THE_PATH is a directory"
elif [ -f $THE_PATH ]
then
        echo "$THE_PATH is a simple file"
elif [ -e $THE_PATH ]
then
        echo "$THE_PATH is not a simple file"
else
        echo "$THE_PATH does NOT exist!!"
fi
 
echo "$(ls -l $THE_PATH)"