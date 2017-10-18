#!/bin/bash

function printc(){
    echo -n "Your choice is "
}
echo "This program will print your selection!"
case $1 in
    "one")
        printc;echo $1 | tr 'a-z''A-Z'
        ;;
    "two")
        printc;echo $1 | tr 'a-z''A-Z'
        ;;
    "three")
        printc;echo $1 | tr 'a-z''A-Z'
        ;;
    *)
        echo "Usage $0 {one|two|three}"
        ;;
esac
