#!/bin/bash
#
# emptyfile_checker.sh
# This script finds empty files in your system /home/user
# Author    : Juan Cortes
# Date      : Jan 5, 2024

# Determine what user am I
user=$(whoami)

# General path
path="/home/$user"

# Command to find all empty files
empty_files=$(find $path -type f -empty)
echo "empty_files" > emptyfilelist.txt

# Check if empty files were found
if [ -z "$empty_files" ]
    then
    echo "No empty files found in $path or its subdirectories."
    else
    echo "Empty files found in $path or its subdirectories:"
    echo "Output is placed in emptyfilelist.txt"
    echo "Do you want to view the terminal to display the results?"
    read -p "Please specify Y/N: " view

    # Case statement for input
    case "$view" in
        [Yy]*)
            echo "$empty_files"
        ;;
        [Nn]*)
            echo "Ok. If you want to see, please examine the text file"
        ;;
        *)
            echo "Invalid input. You are dumb. Exiting. Bye!" 
        ;;
    esac
fi