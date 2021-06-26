# Home Infrastructure

## Pi-Hole

#### Setup

Create environmental variables file in the `pi-hole` folder.

`.env`
```bash
PIHOLE_IPADDRESS=10.10.10.102
PIHOLE_HOST=pi.hole
PIHOLE_TIMEZONE=America/Los_Angeles
PIHOLE_WEBPASSWORD=
```

Copy files to the pi by executing the `pihole_copy.bat` batch file

```
./pihole_copy.bat
```

On the pi

```bash
cd pi-hole
docker-compose up -d
```

## Traefik & other services

#### Setup

Create environmental variables file in the `traefik` folder.

`.env`
```bash
AZUREAD_CLIENTID=
AZUREAD_CLIENTSECRET=
CERT_PASSWORD=
CERT_PATH=/configuration/server.pfx
```

Copy files to the pi by executing the `traefik_copy.bat` batch file

```
./traefik_copy.bat
```

On the pi

```bash
cd traefik
docker-compose up -d
```

#### Todo

- Pi-Hole: Setup IPv6
- Pi-Hole: Setup secure DNS