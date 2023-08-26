#!/bin/bash

COUNT=1
while read VAR
do 
	words=`echo $VAR | wc -w`
	Chare=`echo $VAR | wc -c`
	echo "Number of lines $COUNT:No of words:$words:No of char:$Chare"
	count= `expr $COUNT + 1`
done<$1



