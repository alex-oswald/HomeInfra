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

Copy files to the pi

```
./copy.bat
```

On the pi

```bash
cd pi-hole
docker-compose up -d
```

#### Todo

- Setup IPv6
- Setup secure DNS