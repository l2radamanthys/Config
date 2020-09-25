# nvm

## Instalación en ubuntu/linux

Requisitos previos instalar **curl**

	sudo apt-get update
	sudo apt-get install curl

Instalación
	
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash


Instalar yarn

	npm install yarn
	
Instalar versiones de node

	nvm install v8.16.12
	nvm install v10.17.0
	nvm install v12.18.0
	
Alias de las versiones

	nvm alias v8 v8.16.12
	nvm alias default v8.16.12 #version por defecto
	nvm alias v10 v10.17.0
	nvm alias v12 v12.18.0 
	
Cambiando entre versiones de Node

	nvm use [alias]
	
	