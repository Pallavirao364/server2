#!/bin/bash

factorial(){
while [ $VAR -gt 1 ];
do
	fact=`expr $fact \* $VAR`
	VAR=`expr $VAR - 1`
	
done
echo "Factorial of $num is $fact"
}
for i in $*
do
	num=$i
	VAR=$i
	fact=1
	factorial
done	

