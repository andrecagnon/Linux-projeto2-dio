#!/bin/bash

echo "Atualizado o servidor..."

apt-get update
apt-get updgrade -y

echo "Instalando o Apache 2 ..."

apt-get install apache2 -y

echo "Instalando o unzip..."

apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
