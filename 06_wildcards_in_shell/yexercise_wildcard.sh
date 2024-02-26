#!/bin/bash
# daten=$(date +%G%m%d)

# for file in *.jpg
# do
#     if [ -f "$file" ]
#     then
#         # output1=$(echo "$file" | sed 's/[_]\//')
#         daten=$(date +%G%m%d)
#         mv "$file" "$daten-$file"
#         echo "Renaming $file to $daten-$file"
#     fi
# done


daten=$(date +%G%m%d)
counter=1

for file in *.exe; do
    if [ -f "$file" ]; then
        # Remove the comment if you want to use sed for string manipulation
        # output1=$(echo "$file" | sed 's/[_]\//')
        
        # Rename the file with the current date prefix
        mv "$file" "${daten}-${counter}-${file}"
        echo "Renaming $file to ${daten}-${counter}-${file}"
        ((counter++))
    fi
done