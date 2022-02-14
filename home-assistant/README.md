# Home Assistant


## Setup from dev machine

Open terminal and navigate to the `home-assistant` folder.

```
cd home-assistant
```

Copy files to the pi by executing the `copy.bat` batch file

```
./copy.bat
```


## On the Pi

Before copying files, create `home-assistant` folder.

```bash
mkdir home-assistant
```

Navigate to the `home-assistant` folder.

Start the service.

```base
cd home-assistant
docker-compose up -d
```


## Config

I'm using Wyze cameras with RTSP firmware. See [this post](https://support.wyze.com/hc/en-us/articles/360026245231-Wyze-Cam-RTSP) for instructions and download links.


## Docker Storage

Volumes
