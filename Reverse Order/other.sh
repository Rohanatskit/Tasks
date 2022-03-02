#!/bin/bash
#By using below command you can print the arguments in reverse order
#printf "%s\n" "$@" | tac

#echo -n "Name:$1";
#read Name
#echo -n "Designation:$2";
#read Designation
#echo -n "Emplyee_ID:$3";
#read Emplyee_ID
#echo -n "Company_Name:$4";
#read Company_Name
#echo -n "Joining_Month:$5";
#read Joining_Month
#echo ""
printf "%s\n" "Name: $1" "Designation: $2" "Emplyee_ID: $3" "Company_Name: $4" "Joining_Month: $5" | tac
