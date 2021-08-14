# Rabbitmq


## Setup from dev machine

Open terminal and navigate to the `rabbitmq` folder.

```
cd rabbitmq
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `rabbitmq` folder.

```bash
mkdir rabbitmq
```

Navigate to the `rabbitmq` folder.

Start the service.

```base
cd rabbitmq
docker-compose up -d
```


## Docker Storage

Volumes
