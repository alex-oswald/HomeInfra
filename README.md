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

[Traefik](/traefik/README.md)

[Whoami](/whoami/README.md)


## Raspberry Pi's

| Purpose | Name | Hostname | IP |
|-|-|-|-|
| Compute | Pi-Hole | rp-pihole | 10.10.10.102 |
| Compute | Octoprint | | 10.10.10.103 |
| Compute | Swarm1 | rp-swarm1 | 10.10.10.111 |
| Display | Calendar Display | rp-display1 | 10.10.10.121 |


## Todo

- Pi-Hole
    - Setup IPv6
    - Setup secure DNS
- Docker
    -Volume backup/restore
