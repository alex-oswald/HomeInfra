# Filebrowser


## Setup from dev machine

Open terminal and navigate to the `filebrowser` folder.

```
cd whoami
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `filebrowser` folder.

```bash
mkdir filebrowser
```

Navigate to the `filebrowser` folder.

Start the service.

```base
cd filebrowser
docker-compose up -d
```
