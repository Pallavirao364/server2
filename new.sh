#!/bin/bash
set -x
echo "enter file name"
read name
file_path=`find /home/ec2-user/ -iname ${name}`
cd ${file_path}
echo "current dir: `pwd`"

if [ -d ${file_path} ];
then
	for f in "$file_path"/*;
	do
		mv "$f.*" "$f.new"
	done
fi	



