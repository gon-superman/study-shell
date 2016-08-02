#!/bin/bash

if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi

if [ $(who | wc -l ) -gt 1 ];then echo "true" ; else echo "false"; fi
	
a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

# for 循环
for var in 1 2 3 4 5
do 
	echo $var
done

# for 循环数组
array_system=(Windows Mac Linux)

for var in ${array_system[@]}
do
	echo $var
done

# while 循环
var=0
while ((var < 6))
do
	echo $var
	let "var++"
done;

#while循环可用于读取键盘信息。下面的例子中，输入信息被设置为变量FILM，按<Ctrl-D>结束循环。
function test2(){
	echo '按下 <CTRL-D> 退出'
	echo -n '输入你最喜欢的电影名: '
	while read FILM
	do
	    echo "是的！$FILM 是一部好电影"
	done
}

#无限循环
function test(){
	
	while :
	do
	    echo 'hehe'
	done
	
	while true
	do
	    echo 'haha'
	done
	
	for (( ; ; ))
	do
		echo 'hi,hi,hi'
	done
}


#until 循环
#until循环执行一系列命令直至条件为真时停止。
#until循环与while循环在处理方式上刚好相反。
#一般while循环优于until循环，但在某些时候—也只是极少数情况下，until循环更加有用。

a=0
until (($a > 3))
do
	echo "a:$a"
	let "a++"
done


read var
case $var in
	1) echo 'input:1'
	;;
	2) echo 'input:2'
	;;
	3) echo 'input:3'
	;;
esac


echo 'please input,input 0 exit !'
v="-1"
e="0"
while (( $v != $e )) 
do
	read var
	v=$var
	case $v in 
	1) echo 'v:1'
	;;
	2) 
	 continue
	 echo 'v:2'
	;;
	3) echo 'v:3'
esac
done
			
while :
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break
        ;;
    esac
done

