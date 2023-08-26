#!/bin/bash
echo "Enter file path"
read directory_path
if [ ! -d ${directory+path} ];
then
	echo "Enter valid path "
	exit 1
fi

for file in "$directory_path"/*;
do
	if [ -f "$file" ];
	then
		new_filename="${file}.new"
		mv "$file" "$new_filename"
		echo "$file renamed as $new_filename"	
	fi
done	


