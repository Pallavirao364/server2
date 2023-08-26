#!/bin.bash
count=1
while read LINE
do
	words=`echo $LINE | wc -w`
	chars=`echo $LINE | wc -c`
	echo "$count:Number of words-$words:Number of Charectors-$chars"
	count=`expr $count + 1`
done <$1	
