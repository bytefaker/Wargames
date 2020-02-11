# Bandit Level 4 → Level 5

## Level Goal

The password for the next level is stored in the only human-readable file in the **inhere** directory. Tip: if your terminal is messed up, try the “reset” command.

## Commands you may need to solve this level

ls, cd, cat, file, du, find

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit4 pIwrPrtPN36QITSp3EQaw936yaFoFgAB
  ```

* Step2

  ```shell
  bandit4@bandit:~$ ls
  inhere
  ```

* Step3

  ```shell
  bandit4@bandit:~$ cd inhere/
  ```

* Step4

  ```shell
  bandit4@bandit:~/inhere$ ls
  -file00  -file01  -file02  -file03  -file04  -file05  -file06  -file07  -file08  -file09
  ```

* Step5

  ```
  bandit4@bandit:~/inhere$ file ./*
  ./-file00: data
  ./-file01: data
  ./-file02: data
  ./-file03: data
  ./-file04: data
  ./-file05: data
  ./-file06: data
  ./-file07: ASCII text
  ./-file08: data
  ./-file09: data
  ```

* Step6

  ```
  bandit4@bandit:~/inhere$ cat ./-file07
  koReBOKuIDDepwhWk7jZC0RTdopnAYKh
  ```

  