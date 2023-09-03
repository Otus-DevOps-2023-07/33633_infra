#! /bin/bash

echo "Installing MongoDB"
apt update
sleep 10
apt -y install mongodb

echo "Starting mongodb"
systemctl start mongodb

echo "MongoDB status:"
systemctl status mongodb

echo "Enabling in systemctl"
systemctl enable mongodb
