#!/bin/bash
echo "enter file name"
read dir_name
dir_path=$(find /home/ec2-user/ -iname "${dir_name}")
cd "${dir_path}"
present_dir=$(pwd)
for f in "${present_dir}"/*;
do
	num=$(cat $f | wc -l)
	if [ $num -ge 10 ];
	then
		$(mv $f /home/ec2-user/practice/)
	fi		

done	
