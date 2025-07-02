#!/bin/bash
sudo apt -y update
sudo apt install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo rm -rf /var/www/html/*
sudo echo "Hello from Terraform Test Workspace EC2" > /var/www/html/index.html