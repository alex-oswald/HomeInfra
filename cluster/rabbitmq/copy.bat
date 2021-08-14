echo "Copying files to pi..."
scp -r .\docker-compose.yml pi@rp-swarm1:/home/pi/rabbitmq
echo "Done copying files to pi..."