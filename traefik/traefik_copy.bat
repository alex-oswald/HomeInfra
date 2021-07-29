echo "Copying files to pi..."
scp -r .\.env .\docker-compose.yml .\configuration\ pi@pi-swarm1:/home/pi/HomeInfra
echo "Done copying files to pi..."