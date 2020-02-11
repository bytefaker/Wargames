# Bandit Level 23 → Level 24

## Level Goal

A program is running automatically at regular intervals from **cron**, the time-based job scheduler. Look in **/etc/cron.d/** for the configuration and see what command is being executed.

**NOTE:** This level requires you to create your own first shell-script. This is a very big step and you should be proud of yourself when you beat this level!

**NOTE 2:** Keep in mind that your shell script is removed once executed, so you may want to keep a copy around…

## Commands you may need to solve this level

cron, crontab, crontab(5) (use “man 5 crontab” to access this)

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit23 jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
  ```

* Step2

  ```shell
  bandit23@bandit:~$ cat /etc/cron.d/cronjob_bandit24
  @reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
  * * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
  ```

* Step3

  ```shell
  bandit23@bandit:~$ cat /usr/bin/cronjob_bandit24.sh
  #!/bin/bash
  
  myname=$(whoami)
  
  cd /var/spool/$myname
  echo "Executing and deleting all scripts in /var/spool/$myname:"
  for i in * .*;
  do
      if [ "$i" != "." -a "$i" != ".." ];
      then
  	echo "Handling $i"
  	timeout -s 9 60 ./$i
  	rm -f ./$i
      fi
  done
  ```

* Step4

  ```shell
  bandit23@bandit:~$ vi /var/spool/bandit24/cat_pass.sh
  
  #!/bin/bash
  cat /etc/bandit_pass/bandit24 > /tmp/bandit24_pass
  ```

* Step5

  ```shell
  bandit23@bandit:~$ cat /tmp/bandit24_pass
  UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
  ```

  