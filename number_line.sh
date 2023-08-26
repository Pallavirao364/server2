#!/bin/bash
count=0
while read LINE
do
	words=`echo $LINE | wc -w`	
	chars=`echo $LINE | wc -c`
	count=`expr $count + 1`
	echo "$count:$words,$chars"
done <$1	



