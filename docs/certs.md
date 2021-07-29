# Create self signed domain cert

This was a very quick process and well worth it. Only create them once. The same cert files are copied to each pi used.

## Generate RSA-2048 key

```bash
openssl genrsa -des3 -out pidotlan.key 2048
```

Enter a new _password_

## Create root certificate

Adjust validity days to your liking.

```bash
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 1460 -out rootCA.pem
```

Enter any optional information. You can `ENTER` through each to skip.

## Trust root cert on Windows

```bash
certutil -addstore -f "ROOT" rootCA.pem
```

## Create a SSL SAN certificate

Create a text file named `v3.ext` with contents:

```
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = *.pi.lan
DNS.2 = pi.lan
```

## Create certificate-signing request or CSR

```
openssl req -new -sha256 -nodes -out server.csr -newkey rsa:2048 -keyout server.key -config server.csr.cnf
```

## Create certificate

Create `.crt`

```
openssl x509 -req -in server.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out server.crt -days 500 -sha256 -extfile v3.ext
```

https://betterprogramming.pub/trusted-self-signed-certificate-and-local-domains-for-testing-7c6e6e3f9548

Create `.pfx`

```
openssl pkcs12 -export -out server.pfx -inkey server.key -in server.crt
```

https://exceptionshub.com/how-to-create-pfx-file-from-certificate-and-private-key.html

>Copy your `server.crt`, `server.key` and `server.pfx` files into the `/configuration` folder on the pi.

*Any computers accessing the sites need to trust the root cert.*
