# Install Mongodb

## GNU/Linux Ubuntu 

Agregar firmas

```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
```

Agregar repositorio

```
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
```

Actualizar listado de paquetes e instalar

```
sudo apt-get update
sudo apt-get install -y mongodb-org
```

### Iniciar Servicio 
```
sudo service mongod start
```

### Configuración del servicio
```
/etc/mongod.conf
``` 

### Host
```
mongo --host 127.0.0.1:27017
```






