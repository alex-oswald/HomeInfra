echo "Copying files to pi..."
scp -r .\docker-compose.yml .\config\ pi@rp-homeassistant:/home/pi
echo "Done copying files to pi..."