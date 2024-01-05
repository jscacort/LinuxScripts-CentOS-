#!/bin/bash
#
# Server_check ping
# This script explores if a server can be pinged from a list of ips text file
# Author    : Juan Cortes
# Date      : Jan 1, 2024

# Declare output file
output_file="ip_list_check.txt"
echo "" > ip_list_check.txt
sed -i '1{/^$/d}' "$output_file"

# Checks if user provided file of the iplist
# $# represents the number of command-line arguments passed to the script
# -ne not equal to
# 1 is determining that if the command argument is not passed in 1 value then execute
if [ $# -ne 1 ]
    then
    echo "Usage: $0 <IP_list_filename>"
    exit 1
fi

# Assign the provided filename to the variable IPlist passed from the argument
Iplist="$1"

# Checking if the file exists
# ! is a logical operator that negates the condition that follows it
# -e is a test operator that checks if the file exists
#  "$Iplist" is the variable holding the filename of the IP list provided as an argument to the script
# If condition is true, the execute
if [ ! -e "$Iplist" ]
    then
    echo "Error: The specified IP list file '$Iplist' does not exist."
    exit 1
fi

# Specifying the ip list file manually
# Specify list of ip file
# Iplist="/home/centos/Documents/Linux_Training_2023/Module6/bashscripts/ip_list.txt"

# For loop that iterates over the file and read all ips
for ip in $(cat $Iplist)
    do
    # echo "Pinging $ip address"
    # Use -W to specify time of ping
    ping -c1 -W0.02 $ip &> /dev/null
    
    # If condition that checks if you can ping the ip or not
    if [ $? -eq 0 ]
        then 
        echo "$ip ping is succesful!"  
        status="Sucess"  
        else
        echo "$ip ping is failed!"    
        status="Fail"
    fi

    # Append to the output file
    # Use -e to indicate interpretation of \t
    echo -e "$ip\t$status" >> "$output_file"
done 