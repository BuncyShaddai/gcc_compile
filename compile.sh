#!/bin/bash

exe=$(echo $1 | awk -F. '{print $1}')

gcc -Wall $1 -o $exe
