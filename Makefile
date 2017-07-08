all: setup 

setup: vimrc

vimrc:
	make -C dein
	ln -s ~/dotfiles/_vimrc ~/.vimrc
