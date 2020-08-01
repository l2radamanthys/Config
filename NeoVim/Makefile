comandos:
	@echo "COMANDOS"
	@echo ""
	@echo "    status"
	@echo "    install"
	@echo "    backup"

status:
	@nvim +checkhealt

install:
	@mv ~/.config/nvim/init.vim init.vim ~/.config/nvim/init.vim.bak
	@cp init.vim ~/.config/nvim/init.vim
	@nvim +PlugInstall

backup:
	@cp ~/.config/nvim/init.vim init.vim


