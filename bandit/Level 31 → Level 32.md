# Bandit Level 31 → Level 32

## Level Goal

There is a git repository at `ssh://bandit31-git@localhost/home/bandit31-git/repo`. The password for the user `bandit31-git` is the same as for the user `bandit31`.

Clone the repository and find the password for the next level.

## Commands you may need to solve this level

git

## Solution

* Step1

  ```shell
  ./bandit_login.sh bandit31 47e603bb428404d265f59c42920d81e5
  ```

* Step2

  ```shell
  git clone ssh://bandit31-git@localhost/home/bandit31-git/repo /tmp/bandit31-git
  ```

* Step3

  ```shell
  bandit31@bandit:~$ cd /tmp/bandit31-git
  bandit31@bandit:/tmp/bandit31-git$
  ```

* Step4

  ```shell
  bandit31@bandit:/tmp/bandit31-git$ cat README.md
  This time your task is to push a file to the remote repository.
  
  Details:
      File name: key.txt
      Content: 'May I come in?'
      Branch: master
  ```

* Step5

  ```shell
  vi key.txt
  
  May I come in?
  ```

* Step6

  ```shell
  rm -rf .gitignore
  ```

* Step7

  ```shell
  bandit31@bandit:/tmp/bandit31-git$ git add key.txt
  bandit31@bandit:/tmp/bandit31-git$ git commit -m "push file"
  [master 2d5791a] push file
   1 file changed, 1 insertion(+)
   create mode 100644 key.txt
  bandit31@bandit:/tmp/bandit31-git$ git push
  Could not create directory '/home/bandit31/.ssh'.
  The authenticity of host 'localhost (127.0.0.1)' can't be established.
  ECDSA key fingerprint is SHA256:98UL0ZWr85496EtCRkKlo20X3OPnyPSB5tB5RPbhczc.
  Are you sure you want to continue connecting (yes/no)? yes
  Failed to add the host to the list of known hosts (/home/bandit31/.ssh/known_hosts).
  This is a OverTheWire game server. More information on http://www.overthewire.org/wargames
  
  bandit31-git@localhost's password:
  Counting objects: 3, done.
  Delta compression using up to 4 threads.
  Compressing objects: 100% (2/2), done.
  Writing objects: 100% (3/3), 320 bytes | 0 bytes/s, done.
  Total 3 (delta 0), reused 0 (delta 0)
  remote: ### Attempting to validate files... ####
  remote:
  remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
  remote:
  remote: Well done! Here is the password for the next level:
  remote: 56a9bf19c63d650ce78e6ec0354ee45e
  remote:
  remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
  remote:
  To ssh://localhost/home/bandit31-git/repo
   ! [remote rejected] master -> master (pre-receive hook declined)
  error: failed to push some refs to 'ssh://bandit31-git@localhost/home/bandit31-git/repo'
  ```

  