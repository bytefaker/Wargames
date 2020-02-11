# Bandit Level 30 → Level 31

## Level Goal

There is a git repository at `ssh://bandit30-git@localhost/home/bandit30-git/repo`. The password for the user `bandit30-git` is the same as for the user `bandit30`.

Clone the repository and find the password for the next level.

## Commands you may need to solve this level

git

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit30 5b90576bedb2cc04c86a9e924ce42faf
  ```

* Step2

  ```shell
  git clone ssh://bandit30-git@localhost/home/bandit30-git/repo /tmp/bandit30-git
  ```

* Step3

  ```shell
  bandit30@bandit:~$ cd /tmp/bandit30-git
  bandit30@bandit:/tmp/bandit30-git$
  ```

* Step4

  ```shell
  bandit30@bandit:/tmp/bandit30-git$ cat README.md
  just an epmty file... muahaha
  ```

* Step5

  ```shell
  bandit30@bandit:/tmp/bandit30-git$ git log
  commit 3aa4c239f729b07deb99a52f125893e162daac9e
  Author: Ben Dover <noone@overthewire.org>
  Date:   Tue Oct 16 14:00:44 2018 +0200
  
      initial commit of README.md
  ```

* Step6

  ```shell
  bandit30@bandit:/tmp/bandit30-git$ git branch -a
  * master
    remotes/origin/HEAD -> origin/master
    remotes/origin/master
  ```

* Step7

  ```shell
  bandit30@bandit:/tmp/bandit30-git$ git tag
  secret
  ```

* Step8

  ```shell
  bandit30@bandit:/tmp/bandit30-git$ git show secret
  47e603bb428404d265f59c42920d81e5
  ```

  