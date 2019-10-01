#!/bin/bash
usage="com <c-file>"

# Check the usage
if [ $# -ne 1 ]
then
        echo $usage
        exit 0
fi

# File name without any extension
file=$(echo $1 | awk -F. '{print $1}')
# echo $file
gcc -Wall -g $1 -o $file -lm
# -g : Enable debug mode (GDB)
# -lm : Link math library
