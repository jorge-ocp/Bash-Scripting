#!/bin/bash

#THE FUNCTION CHECK IF THE FILE EXIST AND THEN CREATE A NEW NAME "BACK" AND COPY THE FILE ON TMP DIRECTORY 
function backup_file () {
    if [ -f $1 ]
    then
      BACK="/tmp/$(basename ${1}).$(date +%F).$$"
      echo "Backing up $1 to ${BACK}"
      cp $1 $BACK
    fi
}

#EXECUTION OF THE FUNCTION CHECK IF THE FUNCTION RETURN AN EXIT CODE 0 
backup_file $1
if [ $? -eq 0 ]
then
   echo "Backup succeded!"
fi