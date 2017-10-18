#!/bin/bash
# Program:
#           You input your demobilization date, I calculate how many days before you demobilize.

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will try to calculate : "
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20171008) : " date2

# 利用正则表达式测试一下这个输入的内容是否正确
date_d=$(echo $date2 | grep '[0-9]\{8\}')   # 看看是否有八个数字
if [ "$date_d" == "" ]; then
    echo "You input the wrong date format..."
    exit 1
fi

# 开始计算日期
declare -i date_dem=`date --date="$date2" +%s`  # 退伍日期的秒数
declare -i date_now=`date +%s`                  # 现在日期秒数
declare -i date_total_s=$(($data_dem-$date_now)) # 剩余描述统计
declare -i date_d=$(($date_total_s/60/60/24))   # 转为日数

if [ "$date_total_s" -lt "0" ]; then
    echo "You had been demobilization before: " $((-1*$date_d)) " ago"
else
    declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
    echo "You will denobilize after $data_d days and $date_h hours."
fi
