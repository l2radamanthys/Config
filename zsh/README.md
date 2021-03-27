# Instalar zsh

    $ sudo apt-get install zsh


## configurar zsh por defecto

     $ chsh -s `which zsh`

> NOTA: para que surja efecto el cambio se requiere reiniciar.

## Instalar oh-my-zsh
  
    $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ó

    $ wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

Instalar powerlinefont para agnoster theme

    $ git clone https://github.com/powerline/fonts.git --depth=1
    $ cd fonts
    $ ./install.sh

    $ curl -L https://github.com/hbin/top-programming-fonts/raw/master/install.sh | bash

install ultimo

    curl -O https://raw.githubusercontent.com/KorvinSilver/blokkzh/master/blokkzh-downloader.zsh && zsh blokkzh-downloader.zsh $ZSH_CUSTOM && rm blokkzh-downloader.zsh


## Backupfiles

    $ cp -f ~/.zshrc ~/Workspace/Config/zsh/.zshrc
    $ cp -f ~/.my_aliases ~/Workspace/Config/zsh/.my_aliases
    $ cp -f ~/.bashrc ~/Workspace/Config/zsh/.bashrc
    
