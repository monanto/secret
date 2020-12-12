#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
apt install -y docker-compose
IP=$(curl -s -4 ifconfig.co)
sed -i "s/localhost/$IP" client/nuxt.config.js
docker-compose up --build


