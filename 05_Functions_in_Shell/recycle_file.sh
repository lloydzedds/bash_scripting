#!/bin/bash
# syntax to use thi sript :- scrpit_name.sh filename.ext
# for example: recycle_file  test.txt
# or simply you can run this script ./script_name.sh i.e recycle_file.sh
Linux_Recycle=/mnt/c/Users/MuhammedAhmedSIDGlob/Documents/recycle
if [ -d "$Linux_Recycle" ]; then
    echo "listing files in Linux recycle bin"
    echo "----------------------------------"
    ls $Linux_Recycle
else
    mkdir -p /mnt/c/Users/MuhammedAhmedSIDGlob/Documents/recycle/
fi

function wsl_recycle() {
    if [ -z "$1" ]; then
        echo " "
        echo "listing files incurrent directory"
        echo "_________________________________"
        ls
        read -p "Which file you want to delete: " FILENAME
        if [ -f "$FILENAME" ]; then
            RECYCLEE="/mnt/c/Users/MuhammedAhmedSIDGlob/Documents/recycle/$FILENAME.$(date +%F).$$"
            echo "moving the given file to linux recycle bin"
            mv "$FILENAME" "$RECYCLEE"
        fi
    elif [ -f "$1" ]; then
        # $$ representes the PID which it used to process the task
        RECYCLEE="/mnt/c/Users/MuhammedAhmedSIDGlob/Documents/recycle/$(basename ${1}).$(date +%F).$$"
        echo "moving the given file to linux recycle bin"
        mv "$1" "$RECYCLEE"
    else
        echo "$1 is not a regular file or does not exist"
        return 1
    fi
}
wsl_recycle $1 
if [ -z $1 ]; then
    echo "You have not entered any file name"
elif [ $? -eq 0 ] # $? gives the exit status of the last command
then
    echo "file $1 deletion completed"
else
    echo "file $1 deletion failed"
fi