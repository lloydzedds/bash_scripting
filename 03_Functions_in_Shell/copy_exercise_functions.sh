# #!/bin/bash

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
