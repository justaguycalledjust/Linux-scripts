#! /bin/bash

name="Arnold Schwarzenegger"
 echo "hello $name"

sleep 2
 echo "updating system..."
sudo apt update && sudo apt upgrade && sudo apt autoremove -y

sleep 2
# Check if nginx is installed
if command -v nginx >/dev/null 2>&1
then
 echo "nginx already installed"
else
 echo "installing nginx..."
sudo apt install nginx -y
fi

sleep 2
# Ensure nginx is running
if systemctl is-active --quiet nginx
then
 echo "nginx is already running"
else
 echo "starting nginx..."
sudo systemctl start nginx
fi

sleep 2
# Check if firewall is active
if sudo ufw status | grep -q "status: inactive"
then
 echo "firewall is inactive. configuring now..."

sudo allow 22
sudo allow 80

sudo ufw --force enable

else 
 echo "firewall already active"
fi

sleep 2
 echo "setup complete"
