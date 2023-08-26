#!/bin/bash

COUNT=1
while  read LINE
do
       WORDS=`echo $LINE | wc -w `
        CHARS=`echo $LINE | wc -c`
  echo " LINENUM $COUNT:NO of words :$WORDS:No of char :$CHARS"
                                COUNT=`expr $COUNT + 1 `
                                done<$1
