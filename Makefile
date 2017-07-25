all: setup 

setup: vimrc

gitconfig:
	ln -s ~/dotfiles/_gitconfig ~/.gitconfig

tmux.conf:
	ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf

bash_profile:
	cat ~/dotfiles/_bashrc >> ~/.bashrc

vimrc:
	make -C dein
	ln -s ~/dotfiles/_vimrc ~/.vimrc
