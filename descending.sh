#!/bin/bash
#This program is to sort out numbers in descending order

echo "enter the numbers set1"
read -r input_one
echo "enter numbers set 2"
read -r input_two

read -ra array_one <<<$input_one
read -ra array_two <<<$input_two
combined_array=("${array_one[@]}" "${array_two[@]}")
len=${#combined_array[@]}
for ((i=0; i<$len; i++));
do
	for ((j=i+1; j<$len; j++));
	do
		if ((${combined_array[i]} < ${combined_array[j]}));
		then
			temp=${combined_array[i]}
			combined_array[i]=${combined_array[j]}
			combined_array[j]=$temp
		fi
	done
done	
echo " ${combined_array[@]}"			

