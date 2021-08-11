# SSH

## Generar clave SSH

	

## Permisos clave

	chmod 400 ~/.ssh/id_rsa

## Guardar claves SSH

Activar SSH Agent

	eval "$(ssh-agent -s)"
	
Agregar clave SSH al agente
	
	ssh-add ~/.ssh/id_rsa
