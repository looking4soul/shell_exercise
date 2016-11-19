#!/bin/bash

#编写个shell脚本将./data目录下大于1KB的文件转移到./tmp目录下
#solution2

[[ -d ./tmp ]] || mkdir ./tmp || { echo "mkdir ./tmp error"; exit 1; }

for file in $(ls -al ./data | awk '$5>1024 {print $9}'); do
	echo "moving file $file"
	mv ./data/$file ./tmp
done


