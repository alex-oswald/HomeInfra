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

Start the service.

```bash
docker-compose up -d
```