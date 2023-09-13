
## Añadir repositorio

    sudo apt install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
    sudo apt-get update

## Verificar Version

    apt-cache policy docker-ce

## Instalar

    sudo apt install docker-ce

## Checkear Status

    sudo systemctl status docker

## Agregar permiso para el usuario actual

    sudo groupadd -f docker
    sudo usermod -aG docker $USER
    newgrp docker
