#!/bin/bash
set -x
sum=0
for i in $*
do			
	sum=`expr $sum + $i`
done
echo " Sum of all numbers are $sum "
	

