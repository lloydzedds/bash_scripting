#!/bin/bash

My_script="SHELL"

if [ "$My_script" = "SHELL" ]
then
	SHELL=$(echo "Shell Scripting is fun!")
	echo $SHELL
else
	CHANGE=$(echo "change my script to SHELL")
	echo $CHANGE
fi
hn1=$(hostname)
echo "This script is running on $hn1"

if [ -e /etc/passwd ]
then 
	echo "The shadow passwd is enabled as file exists"
else
	echo "The shadow passwd is not enabled as file doesnt exist"
fi

if [ -w /etc/passwd ]
then
        echo "You have write permision to passwd"
else
	echo "You Dont have permissions to passwd"
fi

for display in man bear pig dog cat sheep
do
	echo $display
done

read -p "Enter the name of a file: " GFNFD
echo "given file name for description: $GFNFD"
ls -al $GFNFD 
if [ -f "$GFNFD" ]
then
	echo "$GFNFD is a regular file"
elif [ -d "$GFNFD" ]
then
	echo "$GFNFD is a directory"
else
	echo "$GFNFD is another type of file"
fi

