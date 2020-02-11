## Level Goal

The goal of this level is for you to log into the game using SSH. The host to which you need to connect is **bandit.labs.overthewire.org**, on port 2220. The username is **bandit0** and the password is **bandit0**. Once logged in, go to the [Level 1](https://overthewire.org/wargames/bandit/bandit1.html) page to find out how to beat Level 1.

## Commands you may need to solve this level

ssh

## Helpful Reading Material

- [Secure Shell (SSH) on Wikipedia](https://en.wikipedia.org/wiki/Secure_Shell)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

## Solution

**Note**: To login the ssh simply with only one execution, I will use `bandit_login.sh` (ssh with expect) to log in. For example: `./bandit_login.sh bandit0 bandit0` (the first parameter is the username and the second parameter is the password). 

Make a `bandit_login.sh` for yourself like this: (And don't forget to give it a executable mode. `chmod +x bandit_login.sh`)

```
#!/bin/bash
function auto_login() {
 expect -c "
   set timeout 60
   spawn ssh $1@bandit.labs.overthewire.org -p 2220
   expect "yes/no" 
   send "yes"\r
   expect "password:"
   send $2\r
   interact
 "
}

auto_login $1 $2
```

Finally, it's very simple to beat the level 0 with executing `./bandit_login.sh bandit0 bandit0`. Enjoy your stay!