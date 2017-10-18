#!/bin/bash
# Program:
#           Using netstat and grep to detect WWW,SSH,FTP and Mail services.

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Now, I will detect your Linux server's services!"
echo -e "The www, ftp, ss, and mail will be detect! \n"

testing=$(netstat -tuln | grep ":80 ")  # 检测port 80在否
if [ "$testing" != "" ]; then
    echo "WWW is running in your system."
fi

testing=$(netstat -tuln | grep ":22 ")  # 检测port 22在否
if [ "$testing" != "" ]; then
    echo "SSH is running in your system."
fi

testing=$(netstat -tuln | grep ":21 ")  # 检测port 21在否
if [ "$testinf" != "" ]; then
    echo "FTP is running in your system."
fi

testing=$(netstat -tuln | grep ":25 ")  # 检测port 25在否
if [ "$testing" != "" ]; then
    echo "MAIL is running in your system."
fi
