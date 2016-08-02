#!/bin/bash
#bash支持一维数组（不支持多维数组），并且没有限定数组的大小。
#类似与C语言，数组元素的下标由0开始编号。获取数组中的元素要利用下标，下标可以是整数或算术表达式，其值应大于或等于0。

array_system=(Windows Mac Linux)
echo ${array_system[0]}
echo ${array_system[1]}
echo ${array_system[2]}
echo ${array_system[@]}

array_lang[0]=java
array_lang[1]=python
array_lang[2]=C
array_lang[3]=C++
array_lang[4]=php
echo ${array_lang[0]}
echo ${array_lang[1]}
echo ${array_lang[2]}
echo ${array_lang[3]}	
echo ${array_lang[4]}
echo ${array_lang[@]}

#获取数组的长度
#获取数组长度的方法与获取字符串长度的方法相同
echo ${#array_system[*]}
echo ${#array_lang[@]}
