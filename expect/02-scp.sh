#!/usr/bin/expect

set timeout 10
set v_ip [lindex $argv 0]
set v_dir [lindex $argv 1]
set v_file [lindex $argv 2]

cd $v_dir
spawn scp ./$v_file root@$v_ip:$v_dir
expect {                 
 "*yes/no" { send "yes\r"; exp_continue}  
 "*password:" { send "xiaoboss\r" }    
}  
interact

#./02-scp.sh 10.71.33.177 /usr/local 1.txt
