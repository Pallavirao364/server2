#!/bin/bash
set -x
count=1
for i in $*
do	
	while [ $i -gt 1 ]
	do	
	
		fact=`expr $count \* $i`
		i=`expr $i - 1`
	done		
echo "$fact"	
done
