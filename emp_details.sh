#!/bin/bash

while read LINE
do
	AGE=`echo $LINE | awk -F " " '{print $2}'`
	if [[ $AGE =~ ^[[:digit:]]+$ ]];
	then
		if [ $AGE -gt 25 ];
		then		
			NAME=`echo $LINE | awk -F " " '{print $1}'`
			echo "$NAME"
		fi
	fi		
done <$1

