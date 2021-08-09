# Heimdall


## Setup from dev machine

Open terminal and navigate to the `heimdall` folder.

```
cd heimdall
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `heimdall` folder.

```bash
mkdir heimdall
```

Navigate to the `heimdall` folder.

Start the service.

```base
cd heimdall
docker-compose up -d
```


## Docker Storage

Volumes