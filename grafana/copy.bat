echo "Copying files to pi..."
scp -r .\docker-compose.yml pi@rp-swarm1:/home/pi/grafana
echo "Done copying files to pi..."