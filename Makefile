all: backup remove link
backup:
	-mkdir ~/BAK_dotfiles;
	-cp -r ~/.vim                 ~/BAK_dotfiles/.vim;
	-cp -r ~/.vimrc               ~/BAK_dotfiles/.vimrc;
	-cp -r ~/.gitconfig           ~/BAK_dotfiles/.gitconfig;
	-cp -r ~/.bashrc              ~/BAK_dotfiles/.bashrc;
	-cp -r ~/.git-completion.bash ~/BAK_dotfiles/.git-completion.bash;
remove:
	-rm -rf ~/.vim
	-rm -rf ~/.vimrc
	-rm -rf ~/.gitconfig
	-rm -rf ~/.bashrc
	-rm -rf ~/.git-completion.bash
link:
	ln -s ~/dotfiles/_vimrc               ~/.vimrc
	ln -s ~/dotfiles/_vim                 ~/.vim
	ln -s ~/dotfiles/_gitconfig           ~/.gitconfig
	ln -s ~/dotfiles/_bashrc              ~/.bashrc
	ln -s ~/dotfiles/_git-completion.bash ~/.git-completion.bash
