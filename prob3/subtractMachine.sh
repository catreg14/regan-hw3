#!/bin/bash

# ------------------------------------------------------------
# Script Name: subtractMachine.sh
# Purpose:
#   Subtracts smaller number from larger and counts down.
#
# Arguments:
#   $1 first number
#   $2 second number
#
# Example:
#   ./subtractMachine.sh 3 8
# ------------------------------------------------------------

if [ $1 -eq $2 ]; then
    echo "Numbers cannot be equal."
    exit 1
fi

if [ $1 -gt $2 ]; then
    larger=$1
    smaller=$2
else
    larger=$2
    smaller=$1
fi

echo "$larger is larger than $smaller"

difference=$((larger - smaller))

echo "Difference = $difference"

while [ $difference -ge 1 ]
do
    echo "Count Down = $difference"
    difference=$((difference - 1))
done
