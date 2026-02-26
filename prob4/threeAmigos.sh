#!/bin/bash

# ------------------------------------------------------------
# Script Name: threeAmigos.sh
# Purpose:
#   Sums first three numbers and calls subtractMachine.sh.
#
# Arguments:
#   $1 $2 $3 numbers to sum
#   $4 number for subtraction
#
# Example:
#   ./threeAmigos.sh 5 5 5 4
# ------------------------------------------------------------

sum=$(($1 + $2 + $3))

echo "Sum = $sum"

../prob3/subtractMachine.sh $sum $4
