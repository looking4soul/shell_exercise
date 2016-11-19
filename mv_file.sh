#!/bin/bash

#编写个shell脚本将./data目录下大于1KB的文件转移到./tmp目录下
#solution1

[[ -d ./tmp ]] || mkdir ./tmp || { echo "mkdir ./tmp error"; exit 1; }

for file in $(ls -a ./data); do
	if [[ -f ./data/$file ]]; then
		size=$(stat -c "%s" ./data/$file)	
		if (( $size > 1024 )); then
			echo "moving file $file of size $size"
			mv ./data/$file ./tmp
		else
			echo "do not move $flie of size $size"
		fi
	fi
done

