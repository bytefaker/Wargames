# Bandit Level 13 → Level 14

## Level Goal

The password for the next level is stored in **/etc/bandit_pass/bandit14 and can only be read by user bandit14**. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. **Note:** **localhost** is a hostname that refers to the machine you are working on

## Commands you may need to solve this level

ssh, telnet, nc, openssl, s_client, nmap

## Helpful Reading Material

- [SSH/OpenSSH/Keys](https://help.ubuntu.com/community/SSH/OpenSSH/Keys)

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit13 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
  ```

* Step2

  ```shell
  bandit13@bandit:~$ ssh bandit14@localhost -i sshkey.private
  Could not create directory '/home/bandit13/.ssh'.
  The authenticity of host 'localhost (127.0.0.1)' can't be established.
  ECDSA key fingerprint is SHA256:98UL0ZWr85496EtCRkKlo20X3OPnyPSB5tB5RPbhczc.
  Are you sure you want to continue connecting (yes/no)? yes
  ```

* Step3

  ```
  bandit14@bandit:~$ cat /etc/bandit_pass/bandit14
  4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
  ```

  