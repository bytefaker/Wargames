# Bandit Level 5 → Level 6

## Level Goal

The password for the next level is stored in a file somewhere under the **inhere** directory and has all of the following properties:

- human-readable
- 1033 bytes in size
- not executable

## Commands you may need to solve this level

ls, cd, cat, file, du, find

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit5 koReBOKuIDDepwhWk7jZC0RTdopnAYKh
  ```

* Step2

  ```shell
  bandit5@bandit:~$ ls
  inhere
  ```

* Step3

  ```shell
  bandit5@bandit:~$ cd inhere/
  ```

* Step4

  ```shell
  bandit5@bandit:~/inhere$ 
  ./maybehere07/.file2: ASCII text, with very long lines
  ```

* Step5

  ```shell
  bandit5@bandit:~/inhere$ cat ./maybehere07/.file2
  DXjZPULLxYr17uwoI01bNLQbtFemEgo7
  ```

  Note: Step 2 ~ 5 can even be executed as a simple line:

  ```shell
  bandit5@bandit:~$ cat $(file `find ./ -perm /666 -size 1033c` | grep ASCII | awk -F : '{print $1}')
  DXjZPULLxYr17uwoI01bNLQbtFemEgo7
  ```

  And I will always execute one line command to beat the level as much as possible in the future. 