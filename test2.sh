#!/bin/bash
# author: seizen

# 定义一个函数
funWithReturn(){
    echo "这个函数会对输入的两个数字进行相加运算..."
    echo "输入第一个数字："
    read aNum
    echo "输入第二个数字："
    read anotherNum
    echo "两个数字分别为 $aNum 和 $anotherNum !"
    return $(($aNum+$anotherNum))
}

# 调用该函数
funWithReturn

# 函数返回值在调用该函数后通过 $? 来获得
echo "输入的两个数字之和为 $? !"
