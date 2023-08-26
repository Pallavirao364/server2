#!/bin/bash

while read LINE
do
	age=`echo $LINE | awk -F " " '{print $3}'`
	if [ $age -gt 25 ];
	then
		name=`echo $LINE | awk -F " " '{print $1}'`
		echo " $name: $age "
	fi
done<$1	
