#!/bin/bash

# Instalar nvm.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Imports requeridos
. /home/administrador/.nvm/nvm.sh
. /home/administrador/.bashrc

source ~/.bashrc

# Ejecutar después de haber instalado nvm y usado source ~/.bashrc
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

# Instalar Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Instalar Nginx y abrir puertos HTTP y HTTPS
sudo apt update
sudo apt install nginx
sudo ufw allow 80
sudo ufw allow 443

# Seguir instalando Docker
sudo apt install docker-ce
sudo apt install docker-compose
sudo usermod -aG docker ${USER}

