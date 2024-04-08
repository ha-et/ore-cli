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
    echo "线程数 不能为空"
    exit 1
fi

# 设置循环次数
for ((i=1; i<=100000; i++)); do 
   /root/ore-cli/target/release/ore --rpc $1 --keypair "id$2.json" --priority-fee $3 mine --threads $4
done;
