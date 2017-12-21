#!bin/bash
echo "Shell 传递参数实例！";
echo "第一个参数为：$1";

echo "参数个数为：$#";
echo "传递的参数作为字符串显示为：$*";

# 演示 * 与 @ 的区别
echo "-- \$* 演示 ---"
for i in "$*";do
    echo $i
done

echo "-- \$@ 演示 ---"
for i in "$@";do
    echo $i
done
