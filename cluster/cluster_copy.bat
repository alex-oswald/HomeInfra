echo "Copying files to pi..."
scp -r .\calendardisplay\ pi@rp-swarm1:/home/pi
scp -r .\filebrowser\ pi@rp-swarm1:/home/pi
scp -r .\grafana\ pi@rp-swarm1:/home/pi
scp -r .\heimdall\ pi@rp-swarm1:/home/pi
scp -r .\plex\ pi@rp-swarm1:/home/pi
scp -r .\portainer\ pi@rp-swarm1:/home/pi
scp -r .\traefik\ pi@rp-swarm1:/home/pi
scp -r .\whoami\ pi@rp-swarm1:/home/pi
echo "Done copying files to pi..."