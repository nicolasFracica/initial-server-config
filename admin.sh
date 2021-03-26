#!/bin/bash

# Instalar nvm.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm install 12
npm install -g nodemon

# Configurar ejecutables.
# Node
var1=$(which node)
sudo ln -s $var1 /usr/bin/node

# npm
var1=$(which npm)
sudo ln -s $var1 /usr/bin/npm

# nodemon
var1=$(which nodemon)
sudo ln -s $var1 /usr/bin/nodemon

# Instalar Nginx y abrir puertos HTTP y HTTPS
sudo apt update
sudo apt install nginx
sudo ufw allow 80
sudo ufw allow 443
