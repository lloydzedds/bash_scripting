#!/bin/bash

function wsl_recycle() {
    if [ -f "$1" ]
    then
        RECYCLEE="/mnt/c/Users/MuhammedAhmedSIDGlob/Documents/recycle/$(basename ${1}).$(date +%F).$$"
        echo "moving the given file to linux recycle bin"
        mv $1 $RECYCLEE
    fi
}
read -p "Which file you want to delete: " FILENAME
wsl_recycle $FILENAME 
if [ $? -eq 0 ]
then
    echo "file deletion completed"
else
    echo "file delete failed"
fi