# Home Infrastructure


## Raspberry Pi Setup

Perform this process for each Raspberry Pi's SD card.

[Prep SD cards](/docs/prep-sd-cards.md)


## Create self-signed cert for use on your LAN

[How to generate certificates](/docs/certs.md)


## Services

Running on `rp-pihole`

[Pi-Hole](/pi-hole/README.md)

Running on `rp-swarm1`

Create a docker network:

```
docker network create homeinfra-net
```

[CalendarDisplay](/calendardisplay/README.md)

[FileBrowser](/filebrowser/README.md)

[Grafana](/grafana/README.md)

[Plex](/plex/README.md)

[Portainer](/portainer/README.md)

[Traefik](/traefik/README.md)

[Whoami](/whoami/README.md)


## Raspberry Pi's

| Purpose | Name | Hostname | IP |
|-|-|-|-|
| Compute | Pi-Hole | rp-pihole | 10.10.10.2 |
| Compute | Octoprint | - | 10.10.10.101 |
| Compute | Swarm1 | rp-swarm1 | 10.10.10.111 |
| Compute | Swarm2 | rp-swarm2 | 10.10.10.112 |
| Display | Calendar Display | rp-display1 | 10.10.10.121 |


## Todo

- Pi-Hole
    - Setup IPv6
    - Setup secure DNS
- Docker
    -Volume backup/restore


## Useful commands

#### Update WiFi SSID and/or password

```
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
```

#### Update container to the latest version

Pull the latest image.

```
docker-compose pull
```

Restart the container to use the updated image

```
docker-compose restart
```