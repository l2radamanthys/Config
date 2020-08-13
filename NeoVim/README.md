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
	pip3 install -e git://github.com/davidhalter/jedi.git#egg=jedi:

En caso que quiera actualizar a la version mas nueva:

	sudo pip install --upgrade neovim
	sudo pip3 install --upgrade neovim
	
Si no tiene instalado **pip** instalar antes con:

	sudo apt-get install python-pip python3-pip


### Instalar Soporte node

	npm install -g neovim

### Comprobar la instalación

	nvim

## Revisar Dependencias

	nvim +checkhealth
	
Si se encuentra en el directorio de este archivo tambien puede ejecutar el alias 
	
	make status 
	
	
## Personalización

Para instalar los archivos asegurese que exista el directorio `~/.config/nvim` si, no existe crearlo, copiar los archivos de este directorio ahi. 

	cp init.vim ~/.config/nvim/init.vim
	cp ./autoload ~/.config/nvim/autoload
	cp ./colors ~/.config/nvim/colors
	
Abrir neovim e instalar paquetes

	nvim
	:PlugInstall
	
## Otros

## FZF

Fuzzi file finder.

### ag

	sudo apt-get install silversearcher-ag

### fd

[Repositorio](https://github.com/sharkdp/fd) descargar el archivo [*.dev](https://github.com/sharkdp/fd/releases)

	
### bat 
Resaltado de sintaxis instalar el paquete .deb desde https://github.com/sharkdp/bat/releases


	
## Nerd Fonts

Algunos complementos necesitan que se setee la fuente o que se defina en consola la fuente de Nerd Font, descargar desde https://github.com/ryanoasis/nerd-fonts, sugeridas
	
- Meslo
- Source Code Pro

Descomprima los archivos y copie el contenido dentro de  `~/.fonts`

Ejecutar el siguiente comando para actualizar cache de fuentes

	fc-cache -fv
	










