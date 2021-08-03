# Traefik & other services

Traefik and other services are installed on a single Raspberry Pi.


## Setup from dev machine

Open terminal and navigate to the `traefik` folder.

```
cd traefik
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `traefik` folder.

```bash
mkdir traefik
```

Navigate to the `traefik` folder.

Start the service.

```base
cd traefik
docker-compose up -d
```


## Docker Storage

Bind mount

```
.
└── configuration
    ├── traefik_dynamic.toml
    ├── server.crt
    └── server.key
```
