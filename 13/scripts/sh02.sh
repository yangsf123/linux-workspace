#!/bin/bash
# Program:
#           User inputs his first name and last name.Program shows his full name.
# History:
# 2017/10/08 ss First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name: " firstname  #提示用户输入
read -p "Please input your last name: " lastname
echo -e "\nYour full name is: " $firstname $lastname
