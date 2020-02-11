#!/bin/bash
function auto_login() {
 command=''
 if [ $1 = 'bandit18' ];then
   command='cat readme'
 fi
 expect -c "
   set timeout 60
   spawn ssh $1@bandit.labs.overthewire.org -p 2220 $command
   expect "password:"
   send $2\r;
   interact
 "
}

auto_login $1 $2

