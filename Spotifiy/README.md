# Instalar

	curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
	echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
	sudo apt-get update && sudo apt-get install spotify-client

# Bloquear anuncios

Agregar las siguientes lineas al final del archivo `/etc/hosts` reiniciar spotify y listo anuncios bloqueados

```
##Spotify Blocked ads

0.0.0.0 pubads.g.doubleclick.net
0.0.0.0 securepubads.g.doubleclick.net
0.0.0.0 http://www.googletagservices.com
0.0.0.0 gads.pubmatic.com
0.0.0.0 ads.pubmatic.com
0.0.0.0 spclient.wg.spotify.com
```