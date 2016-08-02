#!/bin/bash

#Shell中的 test 命令用于检查某个条件是否成立，它可以进行数值、字符和文件三个方面的测试。
#数值测试
#参数	说明
#-eq	等于则为真
#-ne	不等于则为真
#-gt	大于则为真
#-ge	大于等于则为真
#-lt	小于则为真
#-le	小于等于则为真

var1=10;
var2=20;

if test $var1 -gt $var2
then
	echo 'var1>var2'
else 
	echo 'var1<=var2'
fi


#字符串测试
# 参数	说明
#  =	等于则为真
# !=	不相等则为真
# -z 	字符串的长度为零则为真
# -n 	字符串的长度不为零则为真

str1='hello'
str2='redHat'

if test $str1 = $str2
then
	echo 'str1=str2'
else
	echo 'str1!=str2'
fi



#文件测试
#参数		说明
#-e 文件名	如果文件存在则为真
#-r 文件名	如果文件存在且可读则为真
#-w 文件名	如果文件存在且可写则为真
#-x 文件名	如果文件存在且可执行则为真
#-s 文件名	如果文件存在且至少有一个字符则为真
#-d 文件名	如果文件存在且为目录则为真
#-f 文件名	如果文件存在且为普通文件则为真
#-c 文件名	如果文件存在且为字符型特殊文件则为真
#-b 文件名	如果文件存在且为块特殊文件则为真

cd /usr/local/eclipse
if test -e eclipse
then
	if test -r eclipse;then echo 'eclipse can read' ; else echo 'eclipse can`t read';fi
	if test -w eclipse;then echo 'eclipse can write' ; else echo 'eclipse can`t write';fi
	if test -x eclipse;then echo 'eclipse can execute' ; else echo 'eclipse can`t execute';fi
	if test -f eclipse;then echo 'eclipse is not a dir' ; else echo 'eclipse is a dir';fi
else
	echo 'eclipse not exists !'
fi

#另外，Shell还提供了与( -a )、或( -o )、非( ! )三个逻辑操作符用于将测试条件连接起来，其优先级为："!"最高，"-a"次之，"-o"最低

if test -e eclipse -o -e repository
then
	echo 'eclipse or repository exists !'
else
	echo '~~~'
fi

