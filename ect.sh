#!/bin/bash
 
THE_PATH="/etc/shadow"
 
if [ -e $THE_PATH ]
then
     echo "Shadow Passwords are enabled"
 
     if [ -w $THE_PATH ]
     then
          echo "You have permission to edit $THE_PATH"
     else
          echo "Tou do NOT have permission to edit $THE_PATH"
     fi
else
     echo "Shadow Passowrds not enabled"
fi