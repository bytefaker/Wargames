# Bandit Level 11 → Level 12

## Level Goal

The password for the next level is stored in the file **data.txt**, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

## Commands you may need to solve this level

grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd

## Helpful Reading Material

- [Rot13 on Wikipedia](https://en.wikipedia.org/wiki/Rot13)

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit11 IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
  ```

* Step2

  ```shell
  bandit11@bandit:~$ tr [A-Za-z] [N-ZA-Mn-za-m] < data.txt | awk '{print $4}'
  5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
  ```

  