# SSH

## Generar clave SSH

	ssh-keygen -o
	
## Permisos clave

	chmod 400 ~/.ssh/id_rsa

## Guardar claves SSH

Activar SSH Agent

	eval "$(ssh-agent -s)"
	
Agregar clave SSH al agente
	
	ssh-add ~/.ssh/id_rsa

Agregar a authorized_keys

	cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && cat >> ~/.ssh/authorized_keys"
 
