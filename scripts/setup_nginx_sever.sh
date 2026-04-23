#! /bin/bash

# Script: setup_nginx_sever.sh
# Purpose: Install and configure nginx with firewall rules


set -e

echo "[$(date)] updating system..."
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y



# Check if nginx is installed

if command -v nginx >/dev/null 2>&1; then
	echo "nginx already installed"
else
	echo "installing nginx..."
	sudo apt install nginx -y
fi

# Ensure nginx is running

if systemctl is-active --quiet nginx; then
	echo "nginx is already running"
else
	echo "starting nginx..."
	sudo systemctl start nginx
fi

# Check if firewall is active

if sudo ufw status | grep -q "inactive"; then
	echo "firewall is inactive. configuring now..."
	sudo ufw allow 22
	sudo ufw allow 80
	sudo ufw --force enable
else 
	echo "firewall already active"
fi


echo "setup complete"
