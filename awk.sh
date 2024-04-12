#!/bin/bash
echo "#prints all the lines without failure"
awk '{print}' awk.txt
echo ""
echo ""
echo "#print the lines which match the given pattern"
awk '/father/{print}' awk.txt
echo ""
echo ""
echo "#splitting lines into fields" 
awk '{print $1 $2}' awk.txt
echo ""
echo ""
echo "#use of NR in built in variables (displays line numbers)"
awk '{print NR, S0}' awk.txt
echo ""
echo ""
echo "#use of NF built-in variables (display the last field)"
awk '{print $1,SNF}' awk.txt
echo ""
echo ""
echo "#another use of NR built in varain=bles displays line from n to m)"
awk 'NR==2, NR==4 {print NR ,$0}' awk.txt
echo ""
echo ""
echo "# print the first item along with a row number separated with “-” from each line in file"
awk '{print NR "- " $1}' awk2.txt
echo ""
echo ""
echo "#to return the second item from file"
awk '{print $2}' awk2.txt
echo ""
echo ""
echo "#to find the length of the longest line present"
awk '{if (length($0) > max)max = length($0) } END { print max }' awk2.txt
echo ""
echo ""
echo "#to count the lines in file"
awk 'END { print NR }' awk2.txt
echo ""
echo ""
echo "#printing the lines more than 10 characters"
awk 'length($0) >8' awk2.txt
echo ""
echo ""
echo "#to check for any string in any specific column"
awk '{ if($3 == "Q3") print $0;}' awk2.txt
echo ""
echo ""
echo "#BEGIN is used to execute the block of code before processing any input."
awk 'BEGIN { for (i=1; i<=3; i++) print "cube of ", i , "is" , i*i*i;}'

