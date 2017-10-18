#!/bin/bash
# Program:
#           This script only accepts the flowing parameter: one, two or three.

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit(){
    echo -n "Your choice is "   # -n参数可以不断行，在当前行继续显示
}


echo "This program will print your selection !"
#read -p "Input your choice: " choice
#case $choice in
case $1 in
    "one")
        printit; echo $1 | tr 'a-z' 'A-Z'   # 将参数做大小写转换
        ;;
    "two")
        printit; echo $1 | tr 'a-z' 'A-Z'
        ;;
    "three")
        printit; echo $1 | tr 'a-z' 'A-Z'
        ;;
    *)
        echo "Usage $0 {one|two|three}"
        ;;
esac

