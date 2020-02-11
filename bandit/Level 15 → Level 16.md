# Bandit Level 15 → Level 16

## Level Goal

The password for the next level can be retrieved by submitting the password of the current level to **port 30001 on localhost** using SSL encryption.

**Helpful note: Getting “HEARTBEATING” and “Read R BLOCK”? Use -ign_eof and read the “CONNECTED COMMANDS” section in the manpage. Next to ‘R’ and ‘Q’, the ‘B’ command also works in this version of that command…**

## Commands you may need to solve this level

ssh, telnet, nc, openssl, s_client, nmap

## Helpful Reading Material

- [Secure Socket Layer/Transport Layer Security on Wikipedia](https://en.wikipedia.org/wiki/Secure_Socket_Layer)
- [OpenSSL Cookbook - Testing with OpenSSL](https://www.feistyduck.com/library/openssl-cookbook/online/ch-testing-with-openssl.html)

## Solution

* Step1

  ```
  ./bandit_login.sh bandit15 BfMYroe26WYalil77FoDi9qh59eK5xNr
  ```

* Step2

  ```shell
  bandit15@bandit:~$ echo BfMYroe26WYalil77FoDi9qh59eK5xNr | openssl s_client -connect localhost:30001 -ign_eof
  CONNECTED(00000003)
  depth=0 CN = localhost
  verify error:num=18:self signed certificate
  verify return:1
  depth=0 CN = localhost
  verify return:1
  ---
  Certificate chain
   0 s:/CN=localhost
     i:/CN=localhost
  ---
  Server certificate
  -----BEGIN CERTIFICATE-----
  MIICBjCCAW+gAwIBAgIEYo1NxTANBgkqhkiG9w0BAQUFADAUMRIwEAYDVQQDDAls
  b2NhbGhvc3QwHhcNMjAwMTA1MTQzNTU4WhcNMjEwMTA0MTQzNTU4WjAUMRIwEAYD
  VQQDDAlsb2NhbGhvc3QwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAKF4u2eu
  a8VipZPviX0hfNiCnaD2ojAffdBhKTy1bmZSNRuHPBDnU7z8rblNSknSjCITda1C
  GEAI8ZktRbtLpBTbYeTgqPN/EiN5UIRMKbU6P2O93zNFPBsmyfQLrgt+DSLnsxlB
  i/yYyT7WLdtNVBpgwRwkqi9K7dk9vf9waswLAgMBAAGjZTBjMBQGA1UdEQQNMAuC
  CWxvY2FsaG9zdDBLBglghkgBhvhCAQ0EPhY8QXV0b21hdGljYWxseSBnZW5lcmF0
  ZWQgYnkgTmNhdC4gU2VlIGh0dHBzOi8vbm1hcC5vcmcvbmNhdC8uMA0GCSqGSIb3
  DQEBBQUAA4GBAJECW6IB3Ria4xG002BqD3zEbtmrDlK6nmJq+uQ4eJ6cT18o9REb
  npy/lFzlv2LfcrYAnuAp6Fh89MKaYjNzJURjRQ9RkmcYgQJa1n+OBkATb7V+84/a
  k9PDRkscxdNFMGBSvzFD33XZ5lbaGdrwCPyoxenoYghV/753wffN7J6H
  -----END CERTIFICATE-----
  subject=/CN=localhost
  issuer=/CN=localhost
  ---
  No client certificate CA names sent
  Peer signing digest: SHA512
  Server Temp Key: X25519, 253 bits
  ---
  SSL handshake has read 1019 bytes and written 269 bytes
  Verification error: self signed certificate
  ---
  New, TLSv1.2, Cipher is ECDHE-RSA-AES256-GCM-SHA384
  Server public key is 1024 bit
  Secure Renegotiation IS supported
  Compression: NONE
  Expansion: NONE
  No ALPN negotiated
  SSL-Session:
      Protocol  : TLSv1.2
      Cipher    : ECDHE-RSA-AES256-GCM-SHA384
      Session-ID: DD9C0E3064A8BD14371883CF95F4F0953AEABA0F7A2AD004B7E926BF0AE18B8F
      Session-ID-ctx:
      Master-Key: 5752FAD6D8ABA5B32BB927858C6717D4E3D9B2F2D5E7846CDF1851FD0A435A24FE09ED9CDAEA0C6A8515DC0E581E7AD5
      PSK identity: None
      PSK identity hint: None
      SRP username: None
      TLS session ticket lifetime hint: 7200 (seconds)
      TLS session ticket:
      0000 - 56 e9 4e 87 6a 28 48 d0-13 42 5f b9 61 b0 dd d0   V.N.j(H..B_.a...
      0010 - 97 43 69 62 07 72 56 b2-55 a2 4c 09 08 77 e3 f0   .Cib.rV.U.L..w..
      0020 - 73 93 88 f5 3c 04 1b b3-a5 1d b1 9d e7 4a 0b bf   s...<........J..
      0030 - 52 20 cd 34 94 b4 eb 75-44 85 a0 df bd 87 3a a3   R .4...uD.....:.
      0040 - 5a fe af 84 02 a9 79 af-b5 09 49 b1 2a 70 69 b7   Z.....y...I.*pi.
      0050 - ae f9 13 6b 7c f7 06 11-93 68 4b 1a 20 54 c5 e0   ...k|....hK. T..
      0060 - 37 b8 0a c3 d9 d1 b2 8e-b7 86 c5 69 50 77 eb 92   7..........iPw..
      0070 - ac 02 a7 a1 c1 a8 47 cb-ff 7e 33 ae 42 c5 93 a7   ......G..~3.B...
      0080 - ee 3a cd 60 a7 70 bd 8b-e5 e9 27 b3 70 55 5d 3c   .:.`.p....'.pU]<
      0090 - 96 10 48 9d 6c 10 34 41-5a 8d 36 55 a4 73 9c 11   ..H.l.4AZ.6U.s..
  
      Start Time: 1581433152
      Timeout   : 7200 (sec)
      Verify return code: 18 (self signed certificate)
      Extended master secret: yes
  ---
  Correct!
  cluFn7wTiGryunymYOu4RcffSxQluehd
  
  closed
  ```

