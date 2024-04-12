#!/bin/bash
echo "#replaces the word unix with linux in the file line by line"
sed 's/amulya/geetha/' sedfile.txt
echo ""
echo ""
echo "#Replacing the nth occurrence of a pattern in a line"
sed 's/2nd/3rd/2' sedfile.txt
echo ""
echo ""
echo "#Replacing all the occurrence of the pattern in a line "
sed 's/amulya/geetha/g' sedfile.txt
echo ""
echo ""
echo "#Replacing string on a specific line number "
sed '3 s/amulya/geetha/' sedfile.txt
echo ""
echo ""
echo "#Replacing string on a specific line numbers range "
sed '3,5 s/2nd/4th/' sedfile.txt
echo ""
echo ""
echo "#Replacing string on a particular line to entire numbers range "
sed '2,$ s/geetha/amulya/' sedfile.txt
echo ""
echo ""
echo "#Duplicating the replaced line with /p flag"
sed 's/amulya/vijaya/p' sedfile.txt
echo ""
echo ""
echo "#printing only the replaced lines"
sed -n 's/amulya/vijya/p' sedfile.txt
echo ""
echo ""
echo "#To Delete a particular line say "
sed '5d' sedfile.txt
echo ""
echo ""
echo "#To Delete a last line"
sed '$d' sedfile.txt
echo ""
echo ""
echo "#To Delete line from range x to y"
sed '3,6d' sedfile.txt
echo ""
echo ""
echo "#To Delete from nth to last line"
sed '12,$d' sedfile.txt
echo ""
echo ""
echo "#To Delete pattern matching line"
sed '/os/d' sedfile.txt
