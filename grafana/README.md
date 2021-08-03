# Grafana


## Setup from dev machine

Open terminal and navigate to the `grafana` folder.

```
cd grafana
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `grafana` folder.

```bash
mkdir grafana
```

Navigate to the `grafana` folder.

Start the service.

```base
cd grafana
docker-compose up -d
```
