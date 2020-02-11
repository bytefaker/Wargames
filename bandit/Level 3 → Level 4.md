# Bandit Level 3 → Level 4

## Level Goal

The password for the next level is stored in a hidden file in the **inhere** directory.

## Commands you may need to solve this level

ls, cd, cat, file, du, find

## Solution

* Step1

  ```
  ./bandit_login.sh bandit3 UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
  ```

* Step2

  ```
  bandit3@bandit:~$ ls
  inhere
  ```

* Step3

  ```
  cd inhere/
  ```

* Step4

  ```
  bandit3@bandit:~/inhere$ ls -a
  .  ..  .hidden
  ```

* Step5

  ```
  bandit3@bandit:~/inhere$ cat .hidden
  pIwrPrtPN36QITSp3EQaw936yaFoFgAB
  ```

  

