# Portainer


## Setup from dev machine

Open terminal and navigate to the `portainer` folder.

```
cd portainer
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `portainer` folder.

```bash
mkdir portainer
```

Navigate to the `portainer` folder.

Start the service.

```base
cd portainer
docker-compose up -d
```


## Docker Storage

Volumes


## References

https://github.com/portainer/portainer-compose/blob/master/traefik/docker-compose.yml
