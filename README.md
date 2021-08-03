# Home Infrastructure

## Raspberry Pi Setup

Perform this process for each Raspberry Pi's SD card.

[Prep SD cards](/docs/prep-sd-cards.md)

## Create self-signed cert for use on your LAN

[How to generate certificates](/docs/certs.md)

## Running Pi-Hole

Pi-Hole gets a dedicated Raspberry Pi.

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
cd pi-hole
./pihole_copy.bat
```

On the pi

```bash
docker-compose up -d
```

## Traefik & other services

#### Setup

Create environmental variables `.env` file in the `traefik` folder.

```bash
AZUREAD_CLIENTID=
AZUREAD_CLIENTSECRET=
CERT_PASSWORD=
CERT_PATH=/configuration/server.pfx
```

Copy files to the pi by executing the `traefik_copy.bat` batch file

```
cd traefik
./traefik_copy.bat
```

On the pi

```bash
mkdir HomeInfra
cd HomeInfra
docker-compose up -d
```


## Other

### Mount drives

Mount a drive to `/mnt/filebrowser_drive` for File Browser to work

```bash
sudo mkdir /mnt/filebrowser_drive
sudo mount /dev/sda1 /mnt/filebrowser_drive
lsblk
```

### Raspberry Pi's

| Name | Hostname | IP |
|-|-|-|
| Pi-Hole | rp-server | 10.10.10.102 |
| Swarm1 | rp-swarm1 | 10.10.10.111 |
| Calendar Display | rp-kitchen | 10.10.10.101 |
| Octoprint | | 10.10.10.103 |

### Todo

- Pi-Hole: Setup IPv6
- Pi-Hole: Setup secure DNS