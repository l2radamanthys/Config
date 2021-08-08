# Instalación navegadores

## Brave

Ejecutar los siguientes comando para agregar el repositorio e instalar el navegador.

	sudo apt install apt-transport-https curl
	
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	
	sudo apt update

	sudo apt install brave-browser

## Google Chrome

Abra el siguiente enlace y siga las instrucciones para instalar https://www.google.com/intl/es/chrome/?brand=UUXU&gclsrc=aw.ds