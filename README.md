# Home Infrastructure


## Raspberry Pi Setup

Perform this process for each Raspberry Pi's SD card.

[Prep SD cards](/docs/prep-sd-cards.md)


## Create self-signed cert for use on your LAN

[How to generate certificates](/docs/certs.md)


## Services

[Pi-Hole](/pi-hole/README.md)

[Traefik & other services](/traefik/README.md)


## Raspberry Pi's

| Name | Hostname | IP |
|-|-|-|
| Calendar Display | rp-kitchen | 10.10.10.101 |
| Pi-Hole | rp-pihole | 10.10.10.102 |
| Octoprint | | 10.10.10.103 |
| Swarm1 | rp-swarm1 | 10.10.10.111 |


## Todo

- Pi-Hole
    - Setup IPv6
    - Setup secure DNS
- Docker
    -Volume backup/restore