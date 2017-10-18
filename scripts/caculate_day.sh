#!/bin/bash
read -p "Please input your birthday (MMDD, ex>0709): " bir
now='date + %m%d'
if [ "$bir" == "$now" ]; then
    echo "Happy Birthday to you!!!"
elif [ "$bir" -gt "$now" ]; then
    year='date + %Y'
    total_d=$(($(('date --date="$year$bir" + %s'-'date + %s'))))
