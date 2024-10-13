#!/bin/bash

<<note
This script will install Nginx
note

echo "**************INSTALLING NGINX*****************"
sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
echo "**************INSTALLED NGINX*****************"
