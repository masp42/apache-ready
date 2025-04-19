#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o apache2..."
apt-get install apache2 -y

echo "Instalando o  Unzip..."
apt-get install unzip -y

echo "Baixando  e copiando os arquivos do WebSite..."
mkdir /home/diolab/linux-site-dio-main
cd /home/diolab/linux-site-dio-main/
wget https://github.com/masp42/diolab_class_project/raw/refs/heads/main/linux-site-dio-main.zip
unzip linux-site-dio-main.zip
cp -R * /var/www/html/
