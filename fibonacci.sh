#!/bin/bash
echo "enter max number"
read var
max=$var
a=0
b=1
while [ $a -le $max ];
do
	echo -n "$a"
	fn=`expr $a + $b`
	a=$b
	echo "$a"
	b=$fn
	echo "$b"
done	
