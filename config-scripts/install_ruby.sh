#! /bin/bash
echo "Installing Ruby and Bundler"
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential

echo "Installed versions:"
ruby -v
bundler -v
