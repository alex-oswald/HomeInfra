# Traefik & other services

Traefik and other services are installed on a single Raspberry Pi.

## Setup from dev machine

Open terminal and navigate to the `traefik` folder.

```
cd traefik
```

Create environmental variables `.env` file in the `traefik` folder.

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


## On the Pi

Before copying files, create `HomeInfra` folder.

```bash
mkdir HomeInfra
```

Navigate to the `HomeInfra` folder.

Start the service.

```base
cd HomeInfra
docker-compose up -d
```


## Mount drives

Mount a drive to `/mnt/filebrowser_drive` for File Browser to work

```bash
sudo mkdir /mnt/filebrowser_drive
sudo mount /dev/sda1 /mnt/filebrowser_drive
lsblk
```