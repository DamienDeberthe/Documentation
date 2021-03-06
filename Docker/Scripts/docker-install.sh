#!/bin/bash

echo -e "\n************************************"
echo    "******** Docker installer **********"
echo -e "************************************\n"

read -r -p "Install docker?[Y/n] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    apt-get update
        apt-get --yes --force-yes install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
        curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
        add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable"
        apt-get update
        apt-get --yes --force-yes install docker-ce
        echo -e "***\nDocker successfully install.\nDon't forget to test with 'docker run hello-world'\n***"
else
    echo "Bye Bye."
fi
