# Instalación y Configuracion

### Instalación
Descargar e instalar vim sin cambiar las opciones de instalacion [Descargar](http://www.vim.org/download.php)

### 2. Instalar Dependencias
- CURL
- CTAGS
- bundle

#### 2.a CURL
Descargar [CURL](https://curl.haxx.se/download.html) y crear un cmd llamado **curl.cmd** (ubicado en **_resourses/curl_**) con el siguiente codigo:

	@rem Do not use "echo off" to not affect any child calls.
	@setlocal
	
	@rem Get the abolute path to the parent directory, which is assumed to be the
	@rem Git installation root.
	@for /F "delims=" %%I in ("%~dp0..") do @set git_install_root=%%~fI
	@set PATH=%git_install_root%\bin;%git_install_root%\mingw\bin;%PATH%
	
	@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
	@if not exist "%HOME%" @set HOME=%USERPROFILE%
	
	@curl.exe %*

Copiar **curl.bat** en la carpeta bin de [MsGit](https://git-scm.com/download/win)

#### 2.b CTags

Descargar [CTags](http://ctags.sourceforge.net/) y agregarlo al PATH del sistema

#### 2.c Bundle
 
Clonar vundle en la carpeta vimfiles/bundle/vundle

	git clone https://github.com/gmarik/vundle.git vimfiles/bundle/vundle

Copiar y pegar el _vimrc en la carpeta de usuario, para acceder a dicha ubicacion escribir en el explorador de windows: **%USERPROFILE%**

Abrir vim y en modo visualizacion presionar **":"** y escribir

    :BundleInstall 

Opcionalmente copiar las carpetas /colors y /snippets.

---
