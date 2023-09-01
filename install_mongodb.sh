#! /bin/bash

echo "Installing MongoDB"
sudo apt update
sudo apt -y install mongodb

echo "Starting mongodb"
systemctl start mongodb

echo "MongoDB status:"
systemctl status mongodb

echo "Enabling in systemctl"
sudo systemctl enable mongodb
