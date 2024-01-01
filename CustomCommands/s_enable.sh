#!/bin/bash
# Version 2
# s_enable is a script that automatically assigns the appropriate file permission to user executeable
# Author    : Juan Cortes
# Date      : Dec 30, 2023

# Check for input argument. If no valid argument, exit
if [ $# -ne 1 ]; then
    echo "Please indicate the filename"
    echo "Example: $0 <filename>"
    exit 1
fi

# Passing Argument to variable. Only one argument is passed
filename="$1"

#Changing file permission
if [ -e "$filename" ]; then
    chmod 700 "$filename"
    echo "'$filename' can now be executed. Permissions are: 'rwx------'"
else
    echo "Error: '$filename' you specified does not exist"
    exit 1
fi

# Notes:
# $# is the number of arguments
# -ne is not equal
# -e indicates and compares if file exists in the directory
# Changing permission to execute only for user