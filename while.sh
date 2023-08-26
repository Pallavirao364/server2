#!/bin/bash
NUM=$1
SUM=0

while [ $NUM -gt 0 ];
do 
	SUM=`expr $NUM + $SUM`
	NUM=`expr $NUM - 1`
done
echo "Sum is $SUM"

		
