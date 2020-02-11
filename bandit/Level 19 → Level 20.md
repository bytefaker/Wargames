# Bandit Level 19 → Level 20

## Level Goal

To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.

## Helpful Reading Material

- [setuid on Wikipedia](https://en.wikipedia.org/wiki/Setuid)

## Solution

* Step1

  ```
  ./bandit_login.sh bandit19 IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x
  ```

* Step2

  ```shell
  bandit19@bandit:~$ ./bandit20-do cat /etc/bandit_pass/bandit20
  GbKksEFF4yrVs6il55v6gwY5aVje5f0j
  ```

  