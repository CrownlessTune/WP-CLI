#!/bin/bash

# Instalar Certbot y el plugin de Apache para Let's Encrypt
sudo apt install certbot python3-certbot-apache -y

# Solicitar el certificado SSL
sudo certbot --apache -d $DOMAIN

# Configurar renovación automática del certificado
sudo systemctl enable certbot.timer

echo "Certificado SSL/TLS instalado correctamente"
