#!/bin/bash

# $RANDOM 范围在0 - 32767之间,它不应该被用来产生密匙.

#例一:抛骰子
SPOTS=6 #余数为6，求余结果得出0~5，加1得到1~6

let "die1 = $RANDOM % $SPOTS +1" # 抛第一次.
let "die2 = $RANDOM % $SPOTS +1" # 抛第二次.

echo "die1:$die1"
echo "die2:$die2"

#例二:从一幅扑克牌中取出一张随机的牌
suites=(Clubs Diamonds Hearts Spades)
denominations=(A 2 3 4 5 6 7 8 9 10 J Q K)

num_suites=${#suites[*]}
num_denominations=${#denominations[*]}

echo ${denominations[$((RANDOM%num_denominations))]} "of" ${suites[$((RANDOM%num_suites))]}
