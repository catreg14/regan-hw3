#!/bin/bash

# ------------------------------------------------------------
# Script Name: mySetup.sh
# Purpose:
#   Sets CPU to 600MHz, displays CPU info,
#   defines a variable and counts directory items.
#
# Command Line Arguments:
#   None
#
# Example:
#   ./mySetup.sh
# ------------------------------------------------------------

echo "Setting CPU frequency to 600MHz..."
sudo cpufreq-set -f 600MHz

echo "Displaying CPU information..."
cpufreq-info

location="/home/debian"

echo "Location value:"
echo $location

items=$(ls | wc -l)

echo "Number of items in current directory:"
echo $items
