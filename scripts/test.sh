#!/bin/bash
# program:
# User inpput a filename, program will check
# 1.输入文件名,并判断输入存在
echo -e "Please input a filename,I will check the filename's type and \ permission. \n\n"
read -p "Input a filename: " filename

#test -z $filename && echo "You MUST input a filename." && exit 0
#test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0

test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executale"

echo -e "$filename perm is $perm"

echo "The filename:$filename is a $filetype"
echo "And the permissions are: $perm"
