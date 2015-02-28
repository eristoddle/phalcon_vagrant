#!/bin/bash
echo '### Install Mysql ###'

echo "mysql-server mysql-server/root_password select root" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again select root" | debconf-set-selections

sudo apt-get install -y mysql-server

mysql -u root -proot -e "create database phalcon"