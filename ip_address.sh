#!/bin/bash
echo "enter ip address to be verified"
read -r input

IFS='.' read -ra parts <<<$input
if [ ${#parts[@]} -ne 4 ];
then
	echo "invalid"
	exit 1
fi

if ! [[ "$parts" =~ ^[0-9]+$ ]];
then
	echo "Invalid"
	exit 1
fi	
for i in ${part[@]};
do

	if [ $i -lt 0 ] || [ $i -gt 255 ];
	then
		echo "Invalid"
		exit 1
	fi
done	
echo "Valid"
