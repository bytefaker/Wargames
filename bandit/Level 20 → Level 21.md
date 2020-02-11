# Bandit Level 20 → Level 21

## Level Goal

There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).

**NOTE:** Try connecting to your own network daemon to see if it works as you think

## Commands you may need to solve this level

ssh, nc, cat, bash, screen, tmux, Unix ‘job control’ (bg, fg, jobs, &, CTRL-Z, …)

## Solution

* Step1

  Open two terminal, and login.

  ```shell
  ./bandit_login.sh bandit20 GbKksEFF4yrVs6il55v6gwY5aVje5f0j
  ```

* Step2

  On terminal 1

  ```shell
  bandit20@bandit:~$ echo GbKksEFF4yrVs6il55v6gwY5aVje5f0j | nc -p 30012 -l
  ```

* Step3

  On terminal 2

  ```shell
  bandit20@bandit:~$ ./suconnect 30012
  Read: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
  Password matches, sending next password
  ```

* Step4

  Now, the terminal 1 should have received the bandit21's password.

  ```shell
  gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr
  ```

  