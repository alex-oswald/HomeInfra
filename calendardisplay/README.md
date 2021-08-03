# CalendarDisplay


## Setup from dev machine

Open terminal and navigate to the `calendardisplay` folder.

```
cd calendardisplay
```

Create environmental variables `.env` file in the `calendardisplay` folder.

```bash
AZUREAD_CLIENTID=
AZUREAD_CLIENTSECRET=
CERT_PASSWORD=
CERT_PATH=/configuration/server.pfx
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `calendardisplay` folder.

```bash
mkdir calendardisplay
```

Navigate to the `calendardisplay` folder.

Start the service.

```base
cd calendardisplay
docker-compose up -d
```
