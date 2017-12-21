#!/bin/bash
# autor: seizen
# 批量测试文件是否存在

for file in test*.sh
do
    if [ -f $file ];then
        echo "$file existed."
     fi
done
