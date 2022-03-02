#!/bin/bash
#By using below command you can print the arguments in reverse order
#echo ""
printf "%s\n" "1st: $1" "2nd: $2" "3rd: $3" "4th: $4" "5th: $5" | tac
#If you don't want limited number of Arguments to be printed you just put "$@" instead of "$1" "$2".
#And to skip the label you can just type "$1" instead of "Name: $1"
