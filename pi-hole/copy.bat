echo "Copying files to pi..."
scp -r .\.env .\docker-compose.yml pi@rp-pihole:/home/pi
echo "Done copying files to pi..."