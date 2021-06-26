echo "Copying files to pi..."
scp -r .\.env .\docker-compose.yml .\configuration\ pi@rp-server:/home/pi
echo "Done copying files to pi..."