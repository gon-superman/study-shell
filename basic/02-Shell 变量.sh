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
#readonly my_name / declare -r my_name
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

echo ${parameter-'default'}; #如果变量parameter没被声明, 那么就使用默认值
echo ${parameter:-'default'}; #如果变量parameter没被声明, 那么就使用默认值
echo ${username-`whoami`}; #如果变量$username还没有被声明, 那么就echo出`whoami`的结果

#${parameter-default} 和 ${parameter:-default} 在绝大多数的情况下都是
#相同的. 只有在 parameter 已经被声明, 但是被赋null值得时候, 这个额外
#的:才会产生不同的结果

parameter=
echo "-" ${parameter-'default'}; #
echo ":-" ${parameter:-'default'}; #default

parameter1="a"
echo "+" ${parameter1+'alt_value'}; #如果变量parameter被声明了, 那么就使用 alt_value , 否则就使用null字符串.
echo ":+" ${parameter1:+'alt_value'}; #如果变量parameter被设置了, 那么就使用 alt_value , 否则就使用null字符串.

#这两种形式绝大多数情况下都一样. 只有在 parameter 被声明并且设置为null值的时候, 多出来的
#这个:才会引起这两种形式的不同

parameter1=
echo "+" ${parameter1+'alt_value'}; #alt_value
echo ":+" ${parameter1:+'alt_value'}; #

parameter2="B"
echo "?" ${parameter2?err_msg} #如果parameter已经被声明, 那么就使用设置的值, 否则打印err_msg
echo ":?" ${parameter2:?err_msg} #如果parameter已经被设置, 那么就使用设置的值, 否则打印err_msg

parameter2=
echo "?" ${parameter2?err_msg} #
#echo ":?" ${parameter2:?err_msg} #throw exception


#指定变量的类型: 使用declare或者typeset
#declare/typeset选项:
#-r  只读
#-i  整型
#-a  数组
#-f  函数
#-x export 声明一个变量, 并作为这个脚本的环境变量被导出
#-x var=$value declare命令允许在声明变量类型的同时给变量赋值



#变量的间接引用
var=abc
abc=ddd

# 直接引用
echo "var:$var";

# 间接引用
eval var=\$$var
echo "Now var:$var"


