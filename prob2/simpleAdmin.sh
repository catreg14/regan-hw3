#!/bin/bash

# ------------------------------------------------------------
# Script Name: simpleAdmin.sh
# Purpose:
#   Creates directories, file, and soft link.
#
# Arguments:
#   $1 parent directory
#   $2 subdirectory
#   $3 filename
#   $4 link name
#
# Example:
#   ./simpleAdmin.sh dir1 dir2 message.txt linkName
# ------------------------------------------------------------

echo "Creating directory $1..."
mkdir $1
echo "done!"

echo "Creating subdirectory $2 inside $1..."
mkdir $1/$2
echo "done!"

echo "Creating file $3..."
echo "Hello World!" > $3
echo "done!"

echo "Moving $3 to $1/$2..."
mv $3 $1/$2
echo "done!"

echo "Creating symbolic link..."
ln -s $1/$2 $4
echo "done!"
