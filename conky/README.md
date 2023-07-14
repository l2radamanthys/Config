# Instalar conky

	sudo apt-get install conky-all lm-sensors

## Detectar sensores

	sudo sensors-detect

## crear script de inicio

	sudo vim /usr/bin/conky-start

### Agregar el siguiente contenido

	#!/bin/bash
	sleep 10 && conky;

### Dar permiso de ejecucion

	sudo chmod a+x /usr/bin/conky-start

### Copiar el archivo correspondiente a la HOME y renombrar como `.conkyrc`

	cd Workspace/Config/conky
    cp conkyrc_notebook ~/.conkyrc

