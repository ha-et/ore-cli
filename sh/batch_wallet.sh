#!/bin/bash

# 检查参数是否为空
if [ -z "$1" ]; then
    echo "开始数不能为空"
    exit 1
fi

# 检查参数是否为空
if [ -z "$2" ]; then
    echo "新增的数量不能为空"
    exit 1
fi

# 检查参数是否为空
if [ -z "$3" ]; then
    echo "基础目录 不能为空"
    exit 1
fi


# 循环执行脚本指定次数
for ((i=$1; i<=$1+$2; i++)); do
    echo "execute $i"
    solana-keygen new --derivation-path m/44'/501'/0'/0' --force >> wallet.log
    mv /root/.config/solana/id.json $3/tmp/id$i.json
done
