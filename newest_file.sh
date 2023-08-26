#!/bin/bash
echo "enter dir name"
read dir_name
dir_path=$(find /home/ec2-user/ -iname ${dir_name})
cd "${dir_path}"
latest_file=$(ls -t | head -1 | awk -F " " '{print $(NF)}')
echo "Latest file: ${latest_file}"
