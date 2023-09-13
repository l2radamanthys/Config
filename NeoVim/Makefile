comandos:
	@echo "    COMANDOS "
	@echo ""
	@echo "    status"
	@echo "    install"
	@echo "    backup"
	@echo "    diff"
	@echo ""	

status:
	@nvim +checkhealt

install:
	@mkdir -p ~/.config/nvim
	@mv ~/.config/nvim/init.vim ~/.config/nvim/init.bak
	@cp init.vim ~/.config/nvim/init.vim
	@cp -r my_snippets ~/.config/nvim
	@nvim +PlugInstall

backup:
	@cp ~/.config/nvim/init.vim init.vim
#	@cp ~/.config/nvim/my_snippets ./my_snippets

diff:
	@diffuse init.vim ~/.config/nvim/init.vim
