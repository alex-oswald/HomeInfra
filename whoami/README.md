# Whoami

Whoami is used as the template for a new service.

- Replace `whoami` with a friendly name of the service.
- Update `docker-compose.yml`
- Update `copy.bat`


## Setup from dev machine

Open terminal and navigate to the `whoami` folder.

```
cd whoami
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `whoami` folder.

```bash
mkdir whoami
```

Navigate to the `whoami` folder.

Start the service.

```base
cd whoami
docker-compose up -d
```
