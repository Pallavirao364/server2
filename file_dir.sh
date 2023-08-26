#!/bin/bash

echo "Enter the name to check"
read NAME
path=`find /home/ec2-user -iname $NAME`

if [ -L ${path} ];
then
       	        inode=`ls -li ${path} | awk -F " " '{print $1}'`
        	echo "Given name is link"
	        echo "inode of the link is $inode"

elif [ -f ${path} ];
then
       if [ ! -s "${path}" ];
then
	       echo "file is empty"
else
	       echo "`cat ${path}`"
	       echo "Number of lines:`cat ${path} | wc -l`"
fi
elif [ -d ${path} ];
then
	       echo "`ls -l ${path} | sed -n '2,$p'`"
               
else
	                                                                                                                                                                                       echo "GIven name doesn't exist"
                                                                                                                                                                            fi






































