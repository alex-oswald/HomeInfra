#!/bin/bash

# Update List of Available Packages, assume yes to prompts
sudo apt-get update -y

# Upgrade Installed Packages to newest version
sudo apt-get upgrade -y


# Download Docker install script
curl -fsSL https://get.docker.com -o get-docker.sh

# Execute Docker install script
sudo sh get-docker.sh

# Setup non-root user to Docker group so we can execute docker without sudo
sudo usermod -aG docker pi

# Install docker compose
sudo apt install -y python3-pip libffi-dev
sudo pip3 install docker-compose

# Check docker version
docker version

# Check docker compose version
docker-compose version


# Logout
logout
