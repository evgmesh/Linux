# Group 6. Task 4

#!/bin/bash
find . -size +1M | while read line; 
#echo "$?"
if [ "$?" -ne "0" ] ; then
	echo "There is no files larger or equal to 1M"
	exit
fi
do
printf "Found file: $line \n "
sleep 0.5
echo -n "Tools:
1> Delete file
2> Compress it with gzip
3> Skip and go to the next file
4> Exit the script
Please enter your choise: "
read choise </dev/tty
case $choise in
	1) rm $line && echo "Deleted: '$line' at $(date)" >> logFile.txt ; printf "Deleting '$line'\n\n"  ;;
	2) gzip $line ; printf "File $line compressed \n\n" ;;
	3) printf "Skipping '$line' \n\n" ;;
	4) exit ;;
	*) printf "Invalid command \n\n";;
esac
done

