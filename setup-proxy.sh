#!/bin/bash
# This script was made purely for setting up a reverse proxy on an AWS ubuntu (18.04) server
# Make sure nginx and apt-get are setup
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install nginx -y

# Check nginx status (optional)
sudo systemctl status nginx
sudo systemctl start nginx

# Enforce nginx on startup
sudo systemctl enable nginx

# Get the explicit private IP
wget -q -O - 'http://169.254.169.254/latest/meta-data/local-ipv4'

# Reset nginx proxy sites-available
sudo rm /etc/nginx/sites-available/default
sudo vim /etc/nginx/sites-available/default
# Update the site-default.txt with your values

# Test the config and relaod it if it doesnt fail
sudo nginx -t
sudo /etc/init.d/nginx reload
