#!/bin/bash

# Actualizar el sistema
sudo apt update && sudo apt upgrade -y

# Instalar Apache
sudo apt install apache2 -y

# Instalar MySQL
sudo apt install mysql-server -y

# Instalar PHP y las dependencias necesarias para WordPress
sudo apt install php php-mysql libapache2-mod-php php-cli php-curl php-mbstring php-xml php-zip -y

# Iniciar y habilitar Apache y MySQL
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl start mysql
sudo systemctl enable mysql

echo "Pila LAMP instalada con éxito"
