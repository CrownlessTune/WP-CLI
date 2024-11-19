#!/bin/bash
source .env

# Instalar phpMyAdmin
sudo apt install -y phpmyadmin
ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

# Instalar Adminer
mkdir -p /var/www/html/adminer
wget -O /var/www/html/adminer/index.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

# Instalar GoAccess
sudo apt install -y goaccess
goaccess /var/log/apache2/access.log -o /var/www/html/report.html --log-format=COMBINED
