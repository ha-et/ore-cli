#!/bin/bash
rpc_node=$(shuf -n 1 ./rpc.txt)
#echo ${rpc_node}
date
> rewards.txt
for i in `ls *.json`;do echo -ne "check ${i} ...\r";ore --rpc ${rpc_node} --keypair ${i} rewards >> rewards.txt;done
cat rewards.txt | awk '{print $1}'
echo '-------------'
cat rewards.txt | awk 'BEGIN{sum=0}{sum+=$1}END{print sum}'