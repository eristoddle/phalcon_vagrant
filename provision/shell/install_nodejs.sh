#!/bin/bash
echo '### Install NodeJS ###'
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get update -y
sudo apt-get install build-essential
sudo apt-get install nodejs -y
