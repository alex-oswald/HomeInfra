echo "Copying files to pi..."
scp -r .\.env .\docker-compose.yml .\configuration\ pi@rp-swarm1:/home/pi/traefik
echo "Done copying files to pi..."