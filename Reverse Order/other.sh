#!/bin/bash
#By using below command you can print the arguments in reverse order
#echo ""
#To print all given arguments use below command.
#printf "%s\n" "$@" | tac

#If you don't want limited number of Arguments to be printed you just put "$@" instead of "$1" "$2".
printf "%s\n" "$1" "$2" "$3" "$4" "$5" | tac
#And to skip the label you can just type "$1" instead of "Name: $1"
