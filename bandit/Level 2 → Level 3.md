# Bandit Level 2 → Level 3

## Level Goal

The password for the next level is stored in a file called **spaces in this filename** located in the home directory

## Commands you may need to solve this level

ls, cd, cat, file, du, find

## Helpful Reading Material

- [Google Search for “spaces in filename”](https://www.google.com/search?q=spaces+in+filename)

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit2 CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
  ```

* Step2

  ```
  bandit2@bandit:~$ ls
  spaces in this filename
  ```

* Step3

  ```
  bandit2@bandit:~$ cat spaces\ in\ this\ filename
  UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
  ```

  