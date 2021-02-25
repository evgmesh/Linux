# Group 6. Task 3
#!/bin/bash
sum=0
if [ "$#" == "0" ]
then
	echo Please provide at least one argument
	exit 1
fi
for ((i = 1; i <= $1; i++));
do
	let "sum=$sum+$i";
done
echo "Sum of numbers from 1 through $1 is $sum"

