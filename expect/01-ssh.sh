#!/usr/bin/expect

# ssh Login
set timeout 10
spawn ssh root@10.71.19.136
expect {                 
 "*yes/no" { send "yes\r"; exp_continue}  
 "*password:" { send "zfsoft\r" }    
}  
interact

#expect eof  表示读取到文件结束符
#interact 执行完成后保持交互状态，把控制权交给控制台






