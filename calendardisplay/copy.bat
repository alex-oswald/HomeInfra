echo "Copying files to pi..."
scp -r .\.env .\docker-compose.yml pi@rp-swarm1:/home/pi/calendardisplay
echo "Done copying files to pi..."