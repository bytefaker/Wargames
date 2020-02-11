# Bandit Level 6 → Level 7

## Level Goal

The password for the next level is stored **somewhere on the server** and has all of the following properties:

- owned by user bandit7
- owned by group bandit6
- 33 bytes in size

## Commands you may need to solve this level

ls, cd, cat, file, du, find, grep

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit6 DXjZPULLxYr17uwoI01bNLQbtFemEgo7
  ```

* Step2

  ```shell
  bandit6@bandit:~$ cat `find / -user bandit7 -group bandit6 -size 33c 2>/dev/null`
  HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
  ```