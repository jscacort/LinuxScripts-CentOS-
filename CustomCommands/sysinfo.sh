#!/bin/bash
#
# sysinfo.sh
# This script triggers who, dmidecode, cal and free
# Author    : Juan Cortes
# Date      : Jan 5, 2024
# To call use sudo ./sysinfo for detailed information
# Clearing 
clear

# Running who
echo "Determining who is online: "
echo "The following users are logged on"
who
echo

# Running dmidecode. This command provides system information.
# dmidecode is to be run in sudo if you want to obtained detailed inormation
echo "Providing system information: "
echo "NOTE: Please run command in sudo to provide details"
dmidecode > systeminfo.txt 2>&1
echo "Please examine systeminfo.txt"
echo

# Running cal
echo "Displaying today's calendar and saving it to calendar.txt: "
cal
cal > calendar.txt 2>&1 
echo 

# Displaying memory information
echo "Displaying and saving memory information to mem.txt: "
free
free > mem.txt 2>&1
echo

# End
# echo Thank you for using my command

# NOTES: 
# 2>&1 supresses any error logs and any errors is also stored in file
# alternative: dmidecode > a 2>/dev/null