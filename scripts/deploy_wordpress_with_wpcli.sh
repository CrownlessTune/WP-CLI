#!/bin/bash

# Descargar e instalar WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# Descargar WordPress
cd /var/www/html
sudo wp core download --locale=es_ES

# Crear base de datos para WordPress
sudo mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE $WORDPRESS_DB_NAME;"
sudo mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER '$WORDPRESS_DB_USER'@'localhost' IDENTIFIED BY '$WORDPRESS_DB_PASSWORD';"
sudo mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON $WORDPRESS_DB_NAME.* TO '$WORDPRESS_DB_USER'@'localhost';"
sudo mysql -u root -p$MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

# Configurar WordPress
sudo wp core config --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --path=/var/www/html

# Instalar WordPress
sudo wp core install --url=http://$DOMAIN --title="Mi sitio WordPress" --admin_user=admin --admin_password=admin_password --admin_email=admin@tu_dominio.com --path=/var/www/html

echo "WordPress instalado con éxito"
