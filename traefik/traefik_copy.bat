echo "Copying files to pi..."
scp -r .\.env .\docker-compose.yml .\configuration\ pi@pi-kitchen:/home/pi
echo "Done copying files to pi..."