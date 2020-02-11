# Bandit Level 9 → Level 10

## Level Goal

The password for the next level is stored in the file **data.txt** in one of the few human-readable strings, beginning with several ‘=’ characters.

## Commands you may need to solve this level

grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit7 UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
  ```

* Step2

  ```shell
  bandit9@bandit:~$ strings data.txt | grep '^=\+' | tail -n 1 | awk '{print $2}'
  truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
  ```