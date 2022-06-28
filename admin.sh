#!/bin/bash


# Instalar Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y

# Instalar Nginx y abrir puertos HTTP y HTTPS
sudo apt update
sudo apt install nginx -y
sudo ufw enable -y
sudo ufw allow OpenSSH
sudo ufw allow 80
sudo ufw allow 443

# Seguir instalando Docker
sudo apt install docker-ce
sudo apt install docker-compose
sudo usermod -aG docker ${USER}

