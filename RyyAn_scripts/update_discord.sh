#!/bin/bash
# ~/update-discord.sh

set -e
cd /tmp
echo "Downloading latest Discord..."
wget -O discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"

echo "Extracting..."
tar -xvf discord.tar.gz
sudo rm -rf /opt/Discord
sudo mv Discord /opt/
sudo ln -sf /opt/Discord/Discord /usr/bin/discord

echo "Discord updated!"
