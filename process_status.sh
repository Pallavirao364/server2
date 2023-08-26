#!/bin/bash
echo "enter the process to be checked"
read name
for i in $name;
do
	VAR=`ps -ef | grep $i | grep -v "grep"`
	OUT=`echo "$VAR" | grep $i`
	if [ -z $OUT ];
	then
		echo "process is not running"
		sudo systemctl start $i
	else
		echo "process is running"
	fi
done	
		

