# Automating WordPress Installation with WP-CLI

Este repositorio contiene scripts para automatizar la instalación de WordPress utilizando WP-CLI y configurar una pila LAMP, junto con HTTPS utilizando Let's Encrypt.

## Descripción del proceso

1. **Instalación de la pila LAMP**:
   Se instalaron los componentes necesarios para crear un servidor web en Linux, Apache, MySQL y PHP.

2. **Configuración de HTTPS con Let's Encrypt**:
   Se automatizó el proceso de obtención e instalación de un certificado SSL utilizando Let's Encrypt para asegurar las comunicaciones a través de HTTPS.

3. **Instalación de WordPress con WP-CLI**:
   Se utilizó la herramienta WP-CLI para la instalación automatizada de WordPress, proporcionando un entorno de desarrollo listo para usar.

## Contenido del repositorio

- **conf/000-default.conf**: Configuración de Apache para el dominio.
- **htaccess/.htaccess**: Archivo de configuración para la reescritura de URLs en Apache.
- **scripts**: Scripts de Bash utilizados para la instalación y configuración.

### Scripts de Bash

- **.env**: Variables de entorno que configuran el comportamiento de los scripts.
- **install_lamp.sh**: Script para instalar la pila LAMP.
- **setup_letsencrypt_https.sh**: Script para configurar HTTPS con Let's Encrypt.
- **deploy_wordpress_with_wpcli.sh**: Script para desplegar WordPress usando WP-CLI.

## Cómo ejecutar los scripts

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu_usuario/practica.git
   cd practica
