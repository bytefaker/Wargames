# Bandit Level 27 → Level 28

## Level Goal

There is a git repository at `ssh://bandit27-git@localhost/home/bandit27-git/repo`. The password for the user `bandit27-git` is the same as for the user `bandit27`.

Clone the repository and find the password for the next level.

## Commands you may need to solve this level

git

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit27 3ba3118a22e93127a4ed485be72ef5ea
  ```

* Step2

  ```shell
  git clone ssh://bandit27-git@localhost/home/bandit27-git/repo /tmp/bandit27-git
  ```

* Step3

  ```shell
  bandit27@bandit:~$ cat /tmp/bandit27-git/README
  The password to the next level is: 0ef186ac70e04ea33b4c1853d2526fa2
  ```