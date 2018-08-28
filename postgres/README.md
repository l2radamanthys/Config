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

#### pyenv
la configuración de la DB esta en el archivo `.env`
