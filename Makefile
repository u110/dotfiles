all: setup

setup: vimrc zshrc

gitconfig:
	ln -s ~/dotfiles/_gitconfig ~/.gitconfig

tmux.conf:
	ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf

zshrc:
	ln -s ~/dotfiles/_zshrc ~/.zshrc

vimrc:
	make -C dein
	ln -s ~/dotfiles/_vimrc ~/.vimrc
