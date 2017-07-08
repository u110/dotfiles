all: setup 

setup: vimrc

gitconfig:
	ln -s ~/dotfiles/_gitconfig ~/.gitconfig

bash_profile:
	cat ~/dotfiles/_bashrc >> ~/.bashrc

vimrc:
	make -C dein
	ln -s ~/dotfiles/_vimrc ~/.vimrc
