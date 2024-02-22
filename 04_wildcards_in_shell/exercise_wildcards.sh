#!/bin/bash
read -p "Enter the extension to rename: " extension

if [ -z "$extension" ]
then 
    echo "extension cannot be empty"
    exit 1
fi

datex=$(date +%Y-%m-%d)
read -p "enter the prefix for files or press enter for $datex as prefix" prefix
if [ -z "$prefix" ]
then
    prefix=$datex
fi

list1=*.$extension
counter=1
for file in $list1
do 
    if [ -f $file ]
    then    
        filename=$(basename "$file" .$extension)
        newname=$prefix-$counter-$filename.$extension
        echo "renaming $file to $newname"
        mv $file $newname
        ((counter++))
    fi
done
ls
