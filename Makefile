# Put these files where I expect them, but ask permission
install:
	-cp -i aliases ~/.aliases
	-cp -i init.vim ~/.config/nvim/init.vim

diff:
	-diff  aliases ~/.aliases
	-diff  init.vim ~/.config/nvim/init.vim
