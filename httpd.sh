#!/bin/bash

for i in $*
do
	VAR=`ps -ef | grep $i | grep -v "grep"`
	OUT=`echo $VAR | grep $i`
	if [-z  "$OUT" ];
	then
		echo "system not running"
		sudo systemctl start $i
	else
		echo " System runnung"
		
	fi		
done
