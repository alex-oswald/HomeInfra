# Pi-Hole

Pi-Hole gets a dedicated Raspberry Pi.


## Setup from dev machine

Open terminal and navigate to the `pi-hole` folder.

```
cd pi-hole
```

Create an environmental variables `.env` file in the `pi-hole` folder.

*Fill in a password.*

```bash
PIHOLE_IPADDRESS=10.10.10.102
PIHOLE_HOST=pi.hole
PIHOLE_TIMEZONE=America/Los_Angeles
PIHOLE_WEBPASSWORD=
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Make sure the pi assigns itself the same static IP when the IP lease is up. To do this, edit `dhcpcd.conf` with the following command:

```
sudo nano /etc/dhcpcd.conf
```

Add the following:


```
# It is possible to fall back to a static IP if DHCP fails:
# define static profile
profile static_wlan0
static ip_address=10.10.10.2/24
static routers=10.10.10.1
static domain_name_servers=10.10.10.1

# fallback to static profile on wlan0
interface wlan0
fallback static_wlan0
```

Where 10.10.10.1 is the routers IP address, and 10.10.10.2 is Pi-Holes IP address.

>I'm using the wireless interface `wlan0`. If you are using the Ethernet port, replace instances of `wlan0` with `eth0`.

Start the service.

```bash
docker-compose up -d
```


## Docker Storage

Volumes


## Troubleshooting

## Static IP issues

After getting DHCP working with the pi, I was having an issue where the pi did not re-lease itself a static IP, and instead leased some random IP. Once Pi-Hole doesn't have the IP it should, devices can't lease IP addresses and devices stop working due to having no internet from being on a different subnet.

https://danielrampelt.com/blog/install-pihole-raspberry-pi-docker-ipv6/
https://raspberrypi.stackexchange.com/questions/39785/differences-between-etc-dhcpcd-conf-and-etc-network-interfaces