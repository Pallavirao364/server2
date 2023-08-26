#!/bin/bash
input=$1
reversed_string=""
for((i=${#input} - 1; i>=0; i++));
do
	 reversed_string="$reversed_string${input_string:$i:1}"
done	
echo "reversed string:$reversed_string"
