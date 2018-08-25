# Instalar zsh

    $ sudo apt-get install zsh


## configurar zsh por defecto

     $ bssh -s /bin/zsh: 


## Instalar oh-my-zsh
  
    $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Instalar powerlinefont para agnoster theme

    $ git clone https://github.com/powerline/fonts.git --depth=1
    $ cd fonts
    $ ./install.sh

install ultimo

    curl -O https://raw.githubusercontent.com/KorvinSilver/blokkzh/master/blokkzh-downloader.zsh && zsh blokkzh-downloader.zsh $ZSH_CUSTOM && rm blokkzh-downloader.zsh

## Backupfiles

    $ mv -f ~/.zshrc ~/Workspace/Config/zsh/.zshrc
    $ mv -f ~/.my_aliases ~/Workspace/Config/zsh/.my_aliases
    $ mv -f ~/.bashrc ~/Workspace/Config/zsh/.bashrc
    