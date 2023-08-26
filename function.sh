#!/bin/bash
factorial()
{
	while [ $NUM -ge 1 ];
	do
		FACT=`expr $NUM \* $FACT`
		NUM=`expr $NUM - 1`
	done
	echo " Factorial of $VAR is $FACT"
}

for i in $*
do
	FACT=1
	NUM=$i
	VAR=$i
	factorial
done	
