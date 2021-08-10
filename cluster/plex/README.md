# Plex

> Server is missing from the web client
>**TODO** Bind hard drive volumes.

## Setup from dev machine

Open terminal and navigate to the `plex` folder.

```
cd plex
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `plex` folder.

```bash
mkdir plex
```

Navigate to the `plex` folder.

Start the service.

```base
cd plex
docker-compose up -d
```


## Docker Storage

Volumes


## References

https://github.com/plexinc/pms-docker

https://forums.plex.tv/t/plex-traefik-2-0-2-1-not-available-outside-your-network/521424