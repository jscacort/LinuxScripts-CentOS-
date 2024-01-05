#!/bin/bash
#
# touch_777.sh
# This script creates a file and gives permissions rwx to everyone
# Author    : Juan Cortes
# Date      : Jan 5, 2024

read -p "Enter a filename: " filename

if [ -z "$filename" ]; then
  echo "No filename provided. Exiting."
  exit 1
fi

if [ -e "$filename" ]; then
  echo "File already exists. Exiting."
  exit 1
fi

touch "$filename"
if [ $? -ne 0 ]; then
  echo "Error creating the file."
  exit 1
fi

chmod 777 "$filename"
if [ $? -ne 0 ]; then
  echo "Error changing permissions."
  exit 1
fi

echo "File '$filename' was created with read/write/execute for everyone."
