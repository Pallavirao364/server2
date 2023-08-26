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
BIG=$BIG
declare -a remaining_num=()
for j in $*
do
	if [ $j -lt $BIG ];
	then
		remaining_num+=($j)
	fi
done
echo "remaining num:${remaining_num[@]}"
remaining_num=${remaining_num[@]}
SECOND_BIG=${remaining_num[1]}
for k in ${remaining_num[@]};
do
	if [ $k -gt $SECOND_BIG ];
	then
		SECOND_BIG=$k
	fi
done
echo "Second biggest num is ${SECOND_BIG[@]}"		
