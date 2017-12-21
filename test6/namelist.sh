#!/bin/bash
# author: seizen
# 在文件中添加前缀

for name in $(cat namelist)
do
    echo "name= "$name >> namelist
done
echo "The name is out of namelist file" 
