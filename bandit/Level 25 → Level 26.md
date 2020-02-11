# Bandit Level 25 → Level 26

## Level Goal

Logging in to bandit26 from bandit25 should be fairly easy… The shell for user bandit26 is not **/bin/bash**, but something else. Find out what it is, how it works and how to break out of it.

## Commands you may need to solve this level

ssh, cat, more, vi, ls, id, pwd

## Solution

**Note**: Minimize terminal window.

* Step1

  ```shell
  ./bandit_login.sh bandit25 uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG
  ```

* Step2

  ```shell
  bandit25@bandit:~$ cat /etc/passwd | grep bandit26
  bandit26:x:11026:11026:bandit level 26:/home/bandit26:/usr/bin/showtext
  ```

* Step3

  ```shell
  bandit25@bandit:~$ cat /usr/bin/showtext
  #!/bin/sh
  
  export TERM=linux
  
  more ~/text.txt
  exit 0
  ```

  **Note**: No way to modify showtext.

  ```shell
  bandit25@bandit:~$ ls -l /usr/bin/showtext
  -rwxr-xr-x 1 root root 53 Oct 16  2018 /usr/bin/showtext
  ```

* Step4

  ```shell
  bandit25@bandit:~$ ssh bandit26@localhost -i bandit26.sshkey
  ```

* Step5

  1. Now, enter `h` in the `more` window.
  2. And then enter `v` to start up `vi`.
  3. Execute `:set shell=/bin/bash`.
  4. Execute `:set shell` to start up `shell`.

* Step6

  ```shell
  bandit26@bandit:~$ cat /etc/bandit_pass/bandit26
  5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
  ```

* Step7

  ```shell
  bandit26@bandit:~$ ./bandit27-do cat /etc/bandit_pass/bandit27
  3ba3118a22e93127a4ed485be72ef5ea
  ```

  




