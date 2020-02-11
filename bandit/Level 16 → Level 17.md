# Bandit Level 16 → Level 17

## Level Goal

The credentials for the next level can be retrieved by submitting the password of the current level to **a port on localhost in the range 31000 to 32000**. First find out which of these ports have a server listening on them. Then find out which of those speak SSL and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.

## Commands you may need to solve this level

ssh, telnet, nc, openssl, s_client, nmap

## Helpful Reading Material

- [Port scanner on Wikipedia](https://en.wikipedia.org/wiki/Port_scanner)

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit16 cluFn7wTiGryunymYOu4RcffSxQluehd
  ```

* Step2

  ```shell
  bandit16@bandit:~$ nmap localhost -p31000-32000
  
  Starting Nmap 7.40 ( https://nmap.org ) at 2020-02-11 16:01 CET
  Nmap scan report for localhost (127.0.0.1)
  Host is up (0.00030s latency).
  Not shown: 999 closed ports
  PORT      STATE SERVICE
  31518/tcp open  unknown
  31790/tcp open  unknown
  
  Nmap done: 1 IP address (1 host up) scanned in 0.12 seconds
  ```

* Step3

  ```shell
  echo cluFn7wTiGryunymYOu4RcffSxQluehd | openssl s_client -connect localhost:31518 -ign_eof -quiet 2>/dev/null | awk -F Correct! '{print $1}' > /tmp/bandit17.priavte_key
  
  echo cluFn7wTiGryunymYOu4RcffSxQluehd | openssl s_client -connect localhost:31790 -ign_eof -quiet 2>/dev/null | awk -F Correct! '{print $1}' > /tmp/bandit17.priavte_key
  ```

* Step4

  ```shell
  chmod 600 /tmp/bandit17.priavte_key
  ```

* Step5

  ```shell
  bandit16@bandit:~$ ssh bandit17@localhost -i /tmp/bandit17.priavte_key
  Could not create directory '/home/bandit16/.ssh'.
  The authenticity of host 'localhost (127.0.0.1)' can't be established.
  ECDSA key fingerprint is SHA256:98UL0ZWr85496EtCRkKlo20X3OPnyPSB5tB5RPbhczc.
  Are you sure you want to continue connecting (yes/no)? yes
  ```

* Step6

  ```shell
  bandit17@bandit:~$ cat /etc/bandit_pass/bandit17
  xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn
  ```

  

