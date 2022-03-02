#!/bin/bash
echo -n "Name:$1";
#We can even give the arguments after sh File2.sh commands or We can use read
read Name
echo -n "Designation:$2";
read Designation
echo -n "Emplyee_ID:$3";
read Emplyee_ID
echo -n "Company_Name:$4";
read Company_Name
echo -n "Joining_Month:$5";
read Joining_Month
echo ""
echo ""
# We can print the output's in reverse order like shown below but it's not the right way to do it.
echo "Joining_Month:$Joining_Month"
echo ""
echo "Comapany_Name:$Company_Name"
echo ""
echo "Emplyee_ID:$Emplyee_ID"
echo ""
echo "Designation:$Designation"
echo ""
echo "Name:$Name"
echo ""
