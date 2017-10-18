#!/bin/bash
echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==> '$@'"
# shift 一个变量
shift
echo "Total parameter number is ==> $#"
echo "Your whole parameter is => $@"

shift 3 # shift 三个变量
echo "Total parameter number is ==> $#"
echo "Your whole parameter is => $@"
