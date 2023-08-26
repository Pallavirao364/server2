#!/bin/bash
echo "enter file name"
read dir_name
dir_path=$( find /home/ec2-user/ -iname ${dir_name})
cd ${dir_path}
txt_files=$(ls -t *.txt)
for f in ls -t *.txt;
do
	echo "$f"
done	

