#!/bin/bash
#
# Ip list generator
# This script generates all possible list of ip addresses for:
# 192.168.0.0 to 192.168.255.255 (192.168.0.0/16): This range consists of 256 contiguous Class C networks, suitable for smaller private networks.
# Author    : Juan Cortes
# Date      : Jan 1, 2024

# Base IP
base_ip="192.168."

# Defining output file
output_file="ip_list.txt"

# For loop that generates the leg for all ip addresses
# Results are stored in a text file
# > saves echo into output_file. This has to be placed after done so that it is stored in the text file
for i in {0..255}; do
    for j in {0..255}; do
        ip_address="${base_ip}${i}.${j}"
        echo "${ip_address}"
    done
done > "${output_file}"


# Confirmation that the ip addresses were generated
echo "IP addresses generated and saved to ${output_file}"

# Confirmation of number of ip addresses
num_ips=$(wc -l < "${output_file}")
echo "Number of IP addresses generated: $num_ips"