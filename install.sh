#/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update && sudo apt-get -qy upgrade

sudo apt-get -qy install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -	

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update && sudo apt-get -qy install docker-ce

echo
echo * Docker install completed
echo


