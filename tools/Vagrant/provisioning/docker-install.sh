#!/bin/bash


#Install docker & use Docker as a vagrant user
echo "Docker & Docker compose start provisioning script....."
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker vagrant

#Install docker compose
sudo curl -sSLo /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m`
sudo chmod +x /usr/local/bin/docker-compose

#Install docker & docker compose autocompletion
curl -sSLo /etc/bash_completion.d/docker-compose https://raw.githubusercontent.com/docker/compose/$(docker-compose --version | awk 'NR==1{print $NF}')/contrib/completion/bash/docker-compose

echo "Docker & Docker compose provisioning done."