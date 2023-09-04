# Instalar

Revisar cambios en la instalacion desde

    https://www.spotify.com/es/download/linux/

## Agregar repositorio

    curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

## Actualizar paquetes e instalar

	sudo apt-get update && sudo apt-get install spotify-client

# Bloquear anuncios (solo si tienes version FREE)

Agregar las siguientes lineas al final del archivo `/etc/hosts` reiniciar spotify y listo anuncios bloqueados

```
## Spotify Blocked ads

0.0.0.0 pubads.g.doubleclick.net
0.0.0.0 securepubads.g.doubleclick.net
0.0.0.0 http://www.googletagservices.com
0.0.0.0 gads.pubmatic.com
0.0.0.0 ads.pubmatic.com
0.0.0.0 spclient.wg.spotify.com
```