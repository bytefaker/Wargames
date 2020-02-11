# Bandit Level 7 → Level 8

## Level Goal

The password for the next level is stored in the file **data.txt** next to the word **millionth**

## Commands you may need to solve this level

grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit7 HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
  ```

* Step2

  ```shell
  bandit7@bandit:~$ grep millionth data.txt | awk '{print $2}'
  cvX2JJa4CFALtqS87jk27qwqGhBM9plV
  ```

  

