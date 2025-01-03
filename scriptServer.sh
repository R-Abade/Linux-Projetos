#!/bin/bash

echo "Atualizando o servidor..."
dnf check-upgrade
dnf upgrade -y
dnf install apache2 -y
dnf install unzip -y

echo "Baixando os arquivos para o Apache..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/

