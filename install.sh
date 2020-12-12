#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
apt install git -y
git clone https://github.com/1tayH/secret.git && cd secret
docker-compose up --build


