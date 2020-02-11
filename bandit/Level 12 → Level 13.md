# Bandit Level 12 → Level 13

## Level Goal

The password for the next level is stored in the file **data.txt**, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work using mkdir. For example: mkdir /tmp/myname123. Then copy the datafile using cp, and rename it using mv (read the manpages!)

## Commands you may need to solve this level

grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd, mkdir, cp, mv, file

## Helpful Reading Material

- [Hex dump on Wikipedia](https://en.wikipedia.org/wiki/Hex_dump)

## Solution

Nothing in the world is difficult if you put your heart into it.

* Step1

  ```shell
  ./bandit_login.sh bandit12 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
  ```

* Step 2

  ```shell
  bandit12@bandit:~$ mkdir /tmp/bandit12
  ```

  Note: If you have got the error: `mkdir: cannot create directory ‘/tmp/bandit12’: File exists`, just delete it and remkdir.

* Step3

  ```shell
  bandit12@bandit:~$ cd /tmp/bandit12
  bandit12@bandit:/tmp/bandit12$
  ```

* Step4

  ```shell
  bandit12@bandit:/tmp/bandit12$ cp ~/data.txt .
  ```

* Step5

  ```shell
  bandit12@bandit:/tmp/bandit12$ xxd -r data.txt data
  ```

* Step6

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data
  data: gzip compressed data, was "data2.bin", last modified: Tue Oct 16 12:00:23 2018, max compression, from Unix
  ```

* Step7

  ```shell
  bandit12@bandit:/tmp/bandit12$ mv data data.gz && gzip -d data.gz
  ```

* Step8

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data
  data: bzip2 compressed data, block size = 900k
  ```

* Step9

  ```shell
  bandit12@bandit:/tmp/bandit12$ bzip2 -d data
  bzip2: Can't guess original name for data -- using data.out
  ```

* Step10

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data.out
  data.out: gzip compressed data, was "data4.bin", last modified: Tue Oct 16 12:00:23 2018, max compression, from Unix
  ```

* Step11

  ```shell
  bandit12@bandit:/tmp/bandit12$ mv data.out data.gz && gzip -d data.gz
  ```

* Step12

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data
  data: POSIX tar archive (GNU)
  ```

* Step13

  ```shell
  bandit12@bandit:/tmp/bandit12$ tar -xvf data
  data5.bin
  ```

* Step14

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data5.bin
  data5.bin: POSIX tar archive (GNU)
  ```

* Step15

  ```shell
  bandit12@bandit:/tmp/bandit12$ tar -xvf data5.bin
  data6.bin
  ```

* Step16

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data6.bin
  data6.bin: bzip2 compressed data, block size = 900k
  ```

* Step17

  ```shell
  bandit12@bandit:/tmp/bandit12$ bzip2 -d data6.bin
  bzip2: Can't guess original name for data6.bin -- using data6.bin.out
  ```

* Step18

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data6.bin.out
  data6.bin.out: POSIX tar archive (GNU)
  ```

* Step19

  ```shell
  bandit12@bandit:/tmp/bandit12$ tar -xvf data6.bin.out
  data8.bin
  ```

* Step20

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data8.bin
  data8.bin: gzip compressed data, was "data9.bin", last modified: Tue Oct 16 12:00:23 2018, max compression, from Unix
  ```

* Step21

  ```shell
  bandit12@bandit:/tmp/bandit12$ mv data8.bin data8.gz && gzip -d data8.gz
  ```

* Step22

  ```shell
  bandit12@bandit:/tmp/bandit12$ file data8
  data8: ASCII text
  ```

* Step23

  ```shell
  bandit12@bandit:/tmp/bandit12$ awk '{print $4}' data8
  8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
  ```

  