#!/bin/bash
echo "enter the number to be checked"
read var
num=$var
n=$(( $var - 1 ))
for ((i=2; i<$n; i++));
do       	
	if [ $(( $num % $i)) == 0 ];
	then
		is_prime=false
		break
	fi
if $is_prime;
then
	echo "entered number is prime num"
else
	echo "enetered num is not prime num"
fi	

done	


