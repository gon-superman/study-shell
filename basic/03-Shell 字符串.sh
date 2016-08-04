#Shell 字符串

#单引号字符串的限制：
#单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
#单引号字串中不能出现单引号（对单引号使用转义符后也不行）。

#双引号的优点：
#双引号里可以有变量
#双引号里可以出现转义字符

#!/bin/bash
str='this is a string'
echo $str
your_name='redHat'
str="Hello, I know your are \"$your_name\"! "
echo $str

#拼接字符串
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1

#获取字符串长度
echo "your_name(redHat) length : ${#your_name}"

#提取子字符串
#以下实例从字符串第 2 个字符开始截取 4 个字符：
echo ${your_name:1:4}

#查找子字符串(查找字符 "h 或 t" 的位置)
echo `expr index "${your_name}" ht`
echo `expr index "$your_name" Ht`


str="abcAbc123ABC123"

#子串削除
#${string#substring} 从 $string 的 开头 位置截掉最短匹配的 $substring .
#${string##substring}从 $string 的 开头 位置截掉最长匹配的 $substring

echo ${str#a*c} #Abc123ABC123
echo ${str##a*c} #123ABC123

#${string%substring} 从 $string 的 结尾 位置截掉最短匹配的 $substring
#${string%%substring}从 $string 的 结尾 位置截掉最长匹配的 $substring

echo ${str%1*3} #abcAbc123ABC
echo ${str%%1*3} #abcAbc

#Replace
echo ${str/12/D} #abcAbcD3ABC123
echo ${str//12/D} #abcAbcD3ABCD3


