#!/bin/sh
sudo apt update
sudo apt upgrade -y
sudo apt install apache2 php7.0 mariadb-server php7.0-mysql mariadb-client php-xdebug php7.0-mbstring -y
sudo a2dissite 000-default
sudo cp /vagrant/scripts/vagrant/conf/apache-lamp.conf /etc/apache2/sites-available/
sudo a2ensite apache-lamp
sudo a2enmod rewrite
sudo systemctl reload apache2

# MariaDB - bind to all ip addresses for remote connections
sudo cp /vagrant/scripts/vagrant/conf/mariadb-bind-ip.cnf /etc/mysql/mariadb.conf.d/99-bind-all-ip.cnf
sudo systemctl restart mysql

sudo mariadb -uroot -e "CREATE DATABASE IF NOT EXISTS vagrant";
sudo mariadb -uroot -e "CREATE USER IF NOT EXISTS 'vagrant'@'%' IDENTIFIED BY 'vagrant';"
sudo mariadb -uroot -e "GRANT ALL PRIVILEGES ON vagrant.* TO 'vagrant'@'%';"
sudo mariadb -uroot -e "FLUSH PRIVILEGES;"
