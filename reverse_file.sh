#!/bin/bash
if [ $# -eq 0 ];
then
	echo "enter file name"
	exit 1
fi
if [ ! -f "$1" ];
then
	echo "File not found"
	exit 1
fi

mapfile -t lines < $1

for ((i=${#lines[@]} - 1; i=0; i--));
do
	echo "${lines[@]}"
done	


