# Instalación y Configuracion

### Instalación

    $ sudo apt-get install vim vim-gtk git
 

### 2. Instalar Dependencias
- CURL
- CTAGS
- bundle

#### 2.a CURL

No necesita configuracion extra, solo se debe instalar.

	sudo apt-get install curl

#### 2.b CTags

No necesita configuracion extra, solo se debe instalar.

	sudo apt-get install exuberants-ctags

#### 2.c Bundle

Clonar el reporsitorio de vundle en la capeta HOME/[USUARIO]/.vim

	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Copiar y pegar el archivo **.vimrc** en la carpeta Home del usuario actual.

    $ cp ~/Workspace/Config/Vim/.vimrc ~/.vimrc

Abrir vim y en modo visualizacion presionar **":"** y escribir

    :BundleInstall 

Opcionalmente copiar las carpetas `/colors` y `/snippets` en el directorio `~/.vim`. 

    cp -fr ~/Workspace/Config/Vim/colors ~/.vim
    cp -fr ~/Workspace/Config/Vim/snippets ~/.vim


