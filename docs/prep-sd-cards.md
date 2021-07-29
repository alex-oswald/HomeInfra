# Prep Raspberry Pi SD cards

We will image SD cards and make sure they are updated and have docker and docker compose installed.

## Imaging

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

## Install docker

Download Docker installation script & execute

https://github.com/docker/docker-install/blob/master/install.sh

```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
```

We can delete the file now

```bash
rm get-docker.sh
```

Setup non-root user to Docker group so we can execute docker without `sudo`. Logout and back in.
```bash
sudo usermod -aG docker pi
logout
```

Check installation
```bash
docker version
```

## Install docker compose

```bash
sudo apt install -y python3-pip libffi-dev
sudo pip3 install docker-compose
```

Check installation
```bash
docker-compose version
```