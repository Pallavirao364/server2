#!/bin/bash
BIG=$1

for i in $*
do
	if [ $i -gt $BIG ];
	then
		BIG=$i
	fi
done
echo "Biggest num is $BIG"

