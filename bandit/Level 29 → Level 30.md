# Bandit Level 29 → Level 30

## Level Goal

There is a git repository at `ssh://bandit29-git@localhost/home/bandit29-git/repo`. The password for the user `bandit29-git` is the same as for the user `bandit29`.

Clone the repository and find the password for the next level.

## Commands you may need to solve this level

git

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit29 bbc96594b4e001778eee9975372716b2
  ```

* Step2

  ```shell
  git clone ssh://bandit29-git@localhost/home/bandit29-git/repo /tmp/bandit29-git
  ```

* Step3

  ```shell
  cd /tmp/bandit29-git
  ```

* Step4

  ```
  bandit29@bandit:/tmp/bandit29-git$ cat README.md
  # Bandit Notes
  Some notes for bandit30 of bandit.
  
  ## credentials
  
  - username: bandit30
  - password: <no passwords in production!>
  ```

* Step5

  ```shell
  bandit29@bandit:/tmp/bandit29-git$ git branch -a
  * master
    remotes/origin/HEAD -> origin/master
    remotes/origin/dev
    remotes/origin/master
    remotes/origin/sploits-dev
  ```

* Step6

  ```shell
  bandit29@bandit:/tmp/bandit29-git$ git checkout dev
  Branch dev set up to track remote branch dev from origin.
  Switched to a new branch 'dev'
  ```

* Step7

  ```shell
  bandit29@bandit:/tmp/bandit29-git$ cat README.md
  # Bandit Notes
  Some notes for bandit30 of bandit.
  
  ## credentials
  
  - username: bandit30
  - password: 5b90576bedb2cc04c86a9e924ce42faf
  ```

  