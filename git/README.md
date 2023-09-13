## Cliente Visual

	sudo apt-get install git gitg git-gui

## Configuracion

Copiar las claves ssh a `~/.ssh`

Actualizar permisos

    chmod 700 ~/.ssh
    chmod 600 ~/.ssh/id_rsa
    chmod 644 ~/.shh/known_hosts
    chmod 644 ~/.shh/config
    chmod 600 ~/.ssh/rq_enjambre

Copiar la configuracion de git en home

    cp .gitconfig ~/.gitconfig


Para agregar repos con custom config ejemplo spider-backend

    git clone git@bitbucket_enjambre:spiderventures/spider-backend.git