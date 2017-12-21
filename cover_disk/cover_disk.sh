#!/bin/bash
# author: seizen
# 用指定大小文件填充硬盘

counter=0
max=3800
remainder=0
while true
do
    ((counter=counter+1))
    if [ ${#conuter} -gt $max ];then
        break
    fi
    ((remainder=conuter%1000))
    if [ $remainder -eq 0 ];then
        echo -e "counter=$counter\tdate=" $(date)
    fi
    mkdir -p /tmp/temp
    cat < testfile > "/tmp/temp/myfile.$counter"
    if [ $? -ne 0 ];then
        echo "Failed to write file to Disk."
        exit 1
    fi
done
echo "Done!"
