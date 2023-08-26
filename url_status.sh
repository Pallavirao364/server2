#!/bin/bash
echo "Enter the url to be checked"
read url
status=`curl -Is "$url" | head -1`
code=`echo $status | awk -F " " '{print $2}'`
echo "code:$code"
if [ $code -ge 200 ] && [ $code -lt 300 ];
then
	echo "Success"
elif [ $code -ge 300 ] && [ $code -lt 400 ];
then
	echo "Redirection"
elif [ $code -ge 400 ] && [ $code -lt 500 ];
then
	echo "Client error"
else
	echo "Information error"
fi	


	
