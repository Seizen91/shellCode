#!/bin/bash
# author: seizen
# 通过遍历的方法读取配置文件

i=0
while read LINE;do
    hosts_allow[$i]=$LINE
    ((i++))
done < host.allow
for ((i=1;i<=${#hosts_allow[@]};i++));do
    echo ${hosts_allow[$i]}
done
echo "Done"
