# Configurar Postgres

## instalación

	sudo apt-get install postgresql postgresql-contrib

## acceder a postgres

	sudo su - postgres
	
## shell

	psql
	
### salir de la shell

	\q
	
### cambiar password

	ALTER USER postgres WITH PASSWORD 'postgress';
	
> Nota: no olvidar colocar el **;** al final
	
## instalar pgadmin

	sudo apt-get install pgadmin3
	
## Otros

	sudo -u postgres createuser ricardo
	sudo -u postgres psql
	ALTER USER ricardo SUPERUSER CREATEDB;
	\q

#### pyenv
la configuración de la DB esta en el archivo `.env`

## Iniciar con el sistema

Modificar el archivo `/etc/rc0.d` o ejecutar el comando

	update-rc.d postgresql enable

## administrar servicio

	systemctrl  start|stop|restart|status postgres




