#!/bin/bash
# author: seizen
# 自减输出

while (( $# > 0 ))
do
    echo $*
    shift
done
