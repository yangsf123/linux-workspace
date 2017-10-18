#!/bin/bash
# Program:
#       repeat question until user input correct answer.

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

s=0         # 这是累加的数值变量
i=0         # 这是累加的数值，亦是1,2,3...
while [ "$i" != "100" ]
do
    i=$(($i+1))
    s=$(($s+$i))
done
echo "The result of '1+2+3+...+100' is ==> $s"
