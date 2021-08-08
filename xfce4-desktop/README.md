# XFCE4 Desktop

## Instalación

	sudo apt-get update
	sudo apt-get install xfce4
	
## Cambia boton de menu  Wisker

Por defecto XFCE4 trae un menu no tan amigable basando en open-box, es ligero pero si no es nada bonito por lo que instalaremos algo mas amigable

	sudo add-apt-repository ppa:gottcode/gcppa
	sudo apt-get update
	sudo apt-get install xfce4-whiskermenu-plugin

## Instalar Theme Adwatia

Descargar de https://www.gnome-look.org/p/1293054/ 

## Plano Variant Bordes ventana

Descargar de https://www.xfce-look.org/p/1174518/

## Instalar Paquete de iconos Faenza
   
   	sudo add-apt-repository ppa:tiheum/equinox
   	sudo apt-get update
   	sudo apt-get install faenza-icon-theme

## Cargar configuracion escritorio

Copiar los archivos `.gtkrc-2.0` y `.gtkrc-xfce` a la carpeta home `~/`

Reiniciar el escritorio con el comando

	xfce4-panel -r && xfwm4 --replace 

