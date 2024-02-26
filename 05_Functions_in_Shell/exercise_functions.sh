#!/bin/bash
# Practice Exercises
# Exercise 1: Write a shell script that consists of a function that display the number of files in the present working directory. Name this function "file_count" and call it in your script. If you use a variable in your function, remember to make it a local variable.
# Hint: The wc utility is used to count the number of lines, words, and bytes.


function File_here() {
    local LINES=$(ls | wc -l)
    echo "There are $LINES files in this directory"
}
File_here

read -p "Give the path to directory" PATH
function Files_count() {
    local LINES=$(ls $PATH | wc -l)
    echo "There are $LINES files in $PATH directory"
}
Files_count


function Files_arg() {
    local LINES=$(ls $2 | wc -l)
    echo "There are $LINES files in $2 directory"
    local LINESS=$(ls $1 | wc -l)
    echo "There are $LINES files in $1 directory"
}
Files_arg