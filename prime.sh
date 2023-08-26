#!/bin/bash
set-x
echo "Enter the number to be checked"
read NUM
n=$NUM
n_1=$(( $NUM - 1 ))

for i in {1..$n_1}
	if [ `expr $n_1 % $i` == 0];
	then
		echo " Given number is not prime number "
	else
		echo "Given number is prime number:
	fi	
