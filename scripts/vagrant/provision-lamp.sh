#!/bin/sh
sudo apt update
sudo apt upgrade -y
sudo apt install apache2 php7.0 mariadb-server php7.0-mysql mariadb-client php-xdebug -y
sudo a2dissite 000-default
sudo cp /vagrant/scripts/vagrant/conf/apache-lamp.conf /etc/apache2/sites-available/
sudo a2ensite apache-lamp
sudo systemctl reload apache2