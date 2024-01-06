#!/bin/bash
#
# system_monitoring.sh
# This script gives you option to run top, iostat, free, /proc/cpuinfo and dmesg
# Author    : Juan Cortes
# Date      : Jan 5, 2024

clear 

# Instruction
echo "Welcome. Please choose what do you wish to do"
echo

# Options
echo "1) Displays real-time system statistics, including CPU usage, memory usage, and process information"
echo "2) Shows input/output (I/O) statistics, including disk activity, CPU utilization, and more"
echo "3) Display information about system memory usage, including total, used, and free memory"
echo "4) Display pseudo-file containing  detailed information about the CPU(s) in the system and extract file into cpuinfo.txt"
echo "5) Displays kernel ring buffer messages, which contain system boot and hardware-related messages and extract file to kernel.txt"
echo
# Inquiring user to prompt entry
read -p "Please select your action 1-5: " action

case "$action" in
    [1])   
        echo "Executing Option 1)"
        top
    ;;
    [2]) 
        echo "Executing Option 2)"   
        iostat
        echo "Output saved in iostat.txt"
        iostat > iostat.txt
    ;;
    [3])
        echo "Executing Option 3)"
        free
        echo "Output saved in free.txt"
        free > free.txt
    ;;
    [4])
        echo "Executing Option 4)"
        cat /proc/cpuinfo
        echo "Output saved in cpuinfo.txt"
        cat /proc/cpuinfo > cpuinfo.txt
    ;;
    [5])
        echo "Executing Option 5)"
        dmesg
        echo "Output saved in cpuinfo.txt"
        dmesg > cpuinfo.txt
    ;;
    *) 
        echo "Invalid input. Thank you for using the program"
        echo "Exiting..." 
esac