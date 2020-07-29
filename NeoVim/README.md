# Configuración NeoVim 

## Instalación Linux

Agregar la PPA de Neovim

	sudo add-apt-repository ppa:neovim-ppa/unstable
	
Instalar
	
	sudo apt-get update
	sudo apt-get install neovim

#### Agregar soporte portapapeles

	sudo apt install xclip
	
### Instalar soporte python

	sudo python3 -m pip install neovim
	sudo python -m pip install neovim

### Comprobar la instalación

	nvim

## Revisar Dependencias

	nvim +checkhealth
