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
TODOLISTS_2_NAME=
TODOLISTS_1_NAME=
TODOLISTS_0_NAME=
CALENDARS_7_NAME=
CALENDARS_6_NAME=
CALENDARS_5_NAME=
CALENDARS_4_NAME=
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


## Docker Storage

Bind mount

```
.
└── configuration
    └── server.pfx
```
