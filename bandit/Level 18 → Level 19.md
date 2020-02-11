# Bandit Level 18 → Level 19

## Level Goal

The password for the next level is stored in a file **readme** in the homedirectory. Unfortunately, someone has modified **.bashrc** to log you out when you log in with SSH.

## Commands you may need to solve this level

ssh, ls, cat

## Solution

**Note**: To beat this level, you need to modify the `bandit_login.sh` like this:

```shell
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
```

Then you can execute bandit_login.sh as before.

```shell
[23:40:27] xxx:bandit $ ./bandit_login.sh bandit18 kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
spawn ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
This is a OverTheWire game server. More information on http://www.overthewire.org/wargames

bandit18@bandit.labs.overthewire.org's password:
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x
```

