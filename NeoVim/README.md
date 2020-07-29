# Configuración NeoVim 

## Instalación Linux

Agregar la PPA de Neovim

	sudo add-apt-repository ppa:neovim-ppa/unstable
	
Instalar
	
	sudo apt-get update
	sudo apt-get install neovim

Instalar version GTK

	sudo snap install nvim-gtk --candidate

#### Otras dependencias

	sudo apt install git curl python3-pip exuberant-ctags ack-grep

#### Agregar soporte portapapeles

	sudo apt install xclip
	
### Instalar soporte python

	sudo python3 -m pip install neovim
	sudo python -m pip install neovim

ó

	sudo pip3 install neovim
	sudo pip install neovim


En caso que quiera actualizar a la version mas nueva:

	sudo pip install --upgrade neovim
	sudo pip3 install --upgrade neovim
	
Si no tiene instalado **pip** instalar antes con:

	sudo apt-get install python-pip python3-pip


### Instalar Soporte node

	npm install -g neovin

### Comprobar la instalación

	nvim

## Revisar Dependencias

	nvim +checkhealth
	
Si se encuentra en el directorio de este archivo tambien puede ejecutar el alias 
	
	make status 