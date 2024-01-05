#!/bin/bash
#
# dateoutputccalculator v1
# This script gives you the date of the week that you request
# Author    : Juan Cortes
# Date      : Jan 3, 2024

# Instructions 
echo "This script will give you the day of the week that you request"
echo "For example, you can find out the First day of Spring of March 20th on 1996"
echo "The program will ask you the day/month/year"

# Requesting the year
read -p "Please provide the year: " y

# Checking if input is correct, positive integer including 0
if [[ ! $y =~ ^[0-9]+$ ]]
    then
        echo "You are effing dumb, that is not a valid year"
        echo "Exiting datecalculator ..."
        exit 1
fi

# Requesting the month
read -p "Please provide the month: " m

# Checking if input is correct, positive integer including 0
# Checking if the number is less than 1
# Checking if the number is more than 12
if [[ ! $m =~ ^[0-9]+$ ]] || [[ $m -lt 1 ]] || [[ $m -gt 12 ]]
    then
        echo "You are effing dumb, that is not a valid month"
        echo "Exiting datecalculator ..."
        exit 1
fi

# Requesting the day 
read -p "Please provide the day: " d

# Checking if input is correct, positive integer including 0
# Checking if the number is less than 1
# Checking if the number is more than 31
if [[ ! $d =~ ^[0-9]+$ ]] || [[ $d -lt 1 ]] || [[ $d -gt 31 ]]
    then
        echo "You are effing dumb, that is not a valid day"
        echo "Exiting datecalculator ..."
        exit 1
fi
# Checking if you entered a valid day for that specific month and specific year
d_check=$(cal $m $y | awk 'NF {DAYS=$NF} END {print DAYS}')
# Commenting for debugs
# echo $d_check
if [[ $d -gt $d_check ]]
    then
        echo "You are effing dumb, that is not a valid day"
        echo "Exiting datecalculator ..."
        exit 1
fi

# Extracting the day of the valid month
day=$(cal $m $y | awk -v day=$d 'BEGIN {OFS="\t"} {for (i=1; i<=NF; i++) if ($i == day) {print NR, i}}' | awk 'NR==1 {print $2}' | awk 'BEGIN {dayNames["1"]="Sunday"; dayNames["2"]="Monday"; dayNames["3"]="Tuesday"; dayNames["4"]="Wednesday"; dayNames["5"]="Thursday"; dayNames["6"]="Friday"; dayNames["7"]="Saturday"} {print dayNames[$1]}')
echo "The day of the month is: $day"
echo "Thank you, Bye"