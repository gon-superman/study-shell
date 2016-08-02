#注意，变量名和等号之间不能有空格，变量名的命名须遵循如下规则：
#1)首个字符必须为字母（a-z，A-Z）。
#2)中间不能有空格，可以使用下划线（_）。
#3)不能使用标点符号。
#4)不能使用bash里的关键字（可用help命令查看保留关键字

#!/bin/bash
#使用变量
#使用一个定义过的变量，只要在变量名前面加美元符号即可
#变量名外面的花括号是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界
your_name='redHat'
echo $your_name
echo ${your_name}

#只读变量
my_name='root'
readonly my_name
my_name='penghui.qu' #throw exception 'my_name: readonly variable'

#删除变量(变量被删除后不能再次使用,unset 命令不能删除只读变量。)
unset my_name
echo "my_name:${my_name}"

unset your_name
echo "your_name:${your_name}"

#变量类型
#运行shell时，会同时存在三种变量：
#1) 局部变量 局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
#2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
#3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行

#环境变量
echo $JAVA_HOME
echo $PATH
echo $M2_HOME

