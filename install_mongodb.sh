#! /bin/bash

echo "Installing MongoDB"
sudo apt update
sudo apt -y install mongodb

echo "MongoDB status:"
systemctl status mongodb

echo "Enabling in systemctl"
sudo systemctl enable mongodb
