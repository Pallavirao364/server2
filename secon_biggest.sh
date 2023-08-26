#!/bin/bash


BIG=$1
for i in $*
do
	if [ $i -gt $BIG ];
	then
		BIG=$i
	
	fi
done	
echo " Biggest number is $BIG"
declare -a remaining_nu=()
for a in $*
do
	if [ $a -lt $BIG ];
	then
		remaining_nu+=($a)	
	fi
done
echo "remaining_nu: ${remaining_nu[@]}"
remaining_nu=${remaining_nu[@]}
Second_Big=${remaining_nu[1]}
for b in ${remaining_nu[@]}
do
	if [ $b -gt $Second_Big ];
	then
		Second_Big=$b
	fi	
done
echo " Second Biggest number $b"

