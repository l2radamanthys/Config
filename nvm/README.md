# nvm

## Instalación en ubuntu/linux

Requisitos previos instalar **curl**

	sudo apt-get update
	sudo apt-get install curl

Instalación
	
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

> NOTA: si al usar el comando nvm obtenemos el siguiente msj `nvm: command not found` reemplazar el archivo .bashrc

Instalar yarn

	npm install yarn
	
Instalar versiones de node

	nvm install v8.16.2
	nvm install v10.17.0
	nvm install v12.18.0
	
Alias de las versiones

	nvm alias v8 v8.16.2
	nvm alias default v8.16.2
	nvm alias v10 v10.17.0
	nvm alias v12 v12.18.0 
	
> el alias **default** es la version que sera por defecto
	
Cambiando entre versiones de Node

	nvm use [alias]
	
	