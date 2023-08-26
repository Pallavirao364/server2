#!/bin/bash
Today_date=$(date +"%y%m%d% %H:%M:%S")
echo "Today's date and time:$Today_date"
user_name=$(whoami)
echo "Current_user:$user_name"
Present_dir=$(pwd)
echo "Present working dir: $Present_dir"
