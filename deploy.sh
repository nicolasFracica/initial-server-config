#!/bin/bash

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_<llave>

cd /var/www/<proyecto>

git pull origin <rama>

npm run clean
npm install
npm run build
