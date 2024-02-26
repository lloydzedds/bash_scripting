#!/bin/bash

# Exercise 2: Modify the script from the previous exercise. Make the "file_count" function accept a directory as an argument. Next have the function display the name of the directory followed by a colon. Finally, display the number of files to the screen on the next line. Call the function three times. First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.
# Example output:
# /etc:
# 85
# Resources for this lecture



# Function to count files in the directories passed as arguments
function Files_arg() {
    local LINES1=$(ls "$1" | wc -l)
    echo "$1:"
    echo "$LINES1"
    local LINES2=$(ls "$2" | wc -l)
    echo "$2:"
    echo "$LINES2"
}

# Call the function with two directory PATHHs as arguments
Files_arg "$@"



# # Function to count files in the current directory
# function File_here() {
#     local LINES=$(ls | wc -l)
#     echo "There are $LINES files in this directory"
# }

# # Call the function for the current directory
# File_here

# # Prompt the user for a directory PATHH
# read -p "Enter the PATHH to the directory: " PATHH

# # Function to count files in the specified directory
# function Files_count() {
#     local LINES=$(ls "$PATHH" | wc -l)
#     echo "There are $LINES files in $PATHH directory"
# }

# # Call the function for the specified directory
# Files_count