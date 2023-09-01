#! /bin/bash

echo "Downloading app..."

git clone -b monolith https://github.com/express42/reddit.git

echo "Installing and starting app..."

cd reddit
bundle install

puma -d

echo "App port is"
ps aux|grep puma
