#/bin/bash
sum=0 # 总数
i=0 # 1,2,3...
while [ "$i" != "100" ]
do
    i=$(($i+1))
    sum=$(($sum + $i))
    echo "The result of '1+2+3+...+100' is ==> $sum"
done
