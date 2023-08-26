#!/bin/bash
read -p "enter file name: " var
dir_path=$(find /home/ec2-user/ -iname ${var})
cd "${dir_path}"
prefix=$(date "+%y:%m:%d")
echo "$prefix"
for f in "$dir_path"/*;
do
	file_name=$( basename "$f")
	new_name="${prefix}_${file_name}"
	mv "$f" "$new_name"
	echo "$f moved to $new_name"	

done	

