#! /bin/bash
echo "Installing Ruby and Bundler"
apt update
sleep 10
apt install -y ruby-full ruby-bundler build-essential

echo "Installed versions:"
ruby -v
bundler -v
