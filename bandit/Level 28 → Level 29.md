# Bandit Level 28 → Level 29

## Level Goal

There is a git repository at `ssh://bandit28-git@localhost/home/bandit28-git/repo`. The password for the user `bandit28-git` is the same as for the user `bandit28`.

Clone the repository and find the password for the next level.

## Commands you may need to solve this level

git

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit28 0ef186ac70e04ea33b4c1853d2526fa2
  ```

* Step2

  ```shell
  git clone ssh://bandit28-git@localhost/home/bandit28-git/repo /tmp/bandit28-git
  ```

* Step3

  ```shell
  bandit28@bandit:~$ cd /tmp/bandit28-git
  bandit28@bandit:/tmp/bandit28-git$
  ```

* Step4

  ```shell
  bandit28@bandit:/tmp/bandit28-git$ git log
  commit 073c27c130e6ee407e12faad1dd3848a110c4f95
  Author: Morla Porla <morla@overthewire.org>
  Date:   Tue Oct 16 14:00:39 2018 +0200
  
      fix info leak
  
  commit 186a1038cc54d1358d42d468cdc8e3cc28a93fcb
  Author: Morla Porla <morla@overthewire.org>
  Date:   Tue Oct 16 14:00:39 2018 +0200
  
      add missing data
  
  commit b67405defc6ef44210c53345fc953e6a21338cc7
  Author: Ben Dover <noone@overthewire.org>
  Date:   Tue Oct 16 14:00:39 2018 +0200
  
      initial commit of README.md
  ```

* Step5

  ```shell
  bandit28@bandit:/tmp/bandit28-git$ git checkout 186a1038cc54d1358d42d468cdc8e3cc28a93fcb
  Note: checking out '186a1038cc54d1358d42d468cdc8e3cc28a93fcb'.
  
  You are in 'detached HEAD' state. You can look around, make experimental
  changes and commit them, and you can discard any commits you make in this
  state without impacting any branches by performing another checkout.
  
  If you want to create a new branch to retain commits you create, you may
  do so (now or later) by using -b with the checkout command again. Example:
  
    git checkout -b <new-branch-name>
  
  HEAD is now at 186a103... add missing data
  ```

* Step6

  ```shell
  bandit28@bandit:/tmp/bandit28-git$ cat README.md
  # Bandit Notes
  Some notes for level29 of bandit.
  
  ## credentials
  
  - username: bandit29
  - password: bbc96594b4e001778eee9975372716b2
  ```