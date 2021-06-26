# Home Infrastructure

## Raspberry Pi Setup

Perform this process for each Raspberry Pi's SD card.

### Prep Raspberry Pi SD cards

We will image SD cards and make sure they are updated and have docker and docker compose installed.

#### Imaging

Image with Raspberry Pi OS Lite (32-bit)
Press `Ctrl+Shift+X` to setup *Advanced options*
- Set hostname
- Enter your ssh public key
- Configure Wifi
- Set locale settings

SSH into the Pi

Update & upgrade
```bash
sudo apt-get update && sudo apt-get upgrade
```

#### Install docker

Download Docker installation script & execute
```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
```

Setup non-root user to Docker group
```bash
sudo usermod -aG docker pi
```

Change ownership of `docker.sock` file to `pi` user (Needed, or `dial unix /var/run/docker.sock: connect: permission denied`, or need to `logout` first??)
```bash
sudo chown $USER /var/run/docker.sock
```

Check installation
```bash
docker version
```

#### Install docker compose

https://sanderh.dev/setup-Docker-and-Docker-Compose-on-Raspberry-Pi/

arm not supported as of end of 2020

```bash
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get remove python-configparser
sudo pip3 -v install docker-compose
```

Check installation
```bash
docker-compose version
```

### Other

#### Create self signed domain cert

This was a very quick process and well worth it. Only create them once. The same cert files are copied to each pi used.

https://betterprogramming.pub/trusted-self-signed-certificate-and-local-domains-for-testing-7c6e6e3f9548

Also create a `.pfx`

https://exceptionshub.com/how-to-create-pfx-file-from-certificate-and-private-key.html

Copy your `server.crt`, `server.key` and `server.pfx` files into the `/configuration` folder on the pi.

**Any computers accessing the sites need to trust the root cert.**

#### Mount drives

Mount a drive to `/mnt/filebrowser_drive` for File Browser to work

```bash
sudo mkdir /mnt/filebrowser_drive
sudo mount /dev/sda1 /mnt/filebrowser_drive
lsblk
```





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