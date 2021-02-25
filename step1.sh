#!/bin/bash
clear
hournow=$(date +%H)
if [[ $hournow -lt 12 ]]
then
	echo "Good morning, $LOGNAME"
elif [[ "$hournow" -lt 16 ]]
then
	echo "Good afternoon, $LOGNAME"
elif [ "$hournow" -lt 23 ]
then
	echo "Good evening, $LOGNAME"
elif [ "$hournow" -lt 6 ]
then
	echo "Good night, $LOGNAME"
fi
echo The time now is: $(date +%H:%M)
