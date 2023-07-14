# Configuración terminal XFCE

## Instalación

Instalar terminal

	sudo apt-get update
	sudo apt-get install xfce4-terminal

Instalar themes

    $ git clone git@github.com:tinted-theming/base16-xfce4-terminal.git
    $ ./convert2themes
    $ sudo cp themes/*.theme /usr/share/xfce4/terminal/colorschemes/

Copiar configuración 

	cp -r ./terminal ~/.config/xfce4/