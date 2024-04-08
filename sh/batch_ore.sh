#!/bin/bash

# 检查参数是否为空
if [ -z "$1" ]; then
    echo "rpc不能为空"
    exit 1
fi

# 检查参数是否为空
if [ -z "$2" ]; then
    echo "id 不能为空"
    exit 1
fi

# 检查参数是否为空
if [ -z "$3" ]; then
    echo "fee 不能为空"
    exit 1
fi

# 检查参数是否为空
if [ -z "$4" ]; then
    echo "开启的窗口 不能为空"
    exit 1
fi

# 检查参数是否为空
if [ -z "$5" ]; then
    echo "基础目录 不能为空"
    exit 1
fi

# 检查参数是否为空
if [ -z "$6" ]; then
    echo "线程数 不能为空"
    exit 1
fi

cd $5

# 循环执行脚本指定次数
for ((i=1; i<=$4; i++)); do
    echo "execute $i"
    nohup sh "ore.sh" $1 $2 $3 $6 > "output$2.log" 2>&1 &
done
