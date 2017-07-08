all: setup 

setup: vimrc

bash_profile:
	cat ~/dotfiles/_bashrc >> ~/.bashrc

vimrc:
	make -C dein
	ln -s ~/dotfiles/_vimrc ~/.vimrc
