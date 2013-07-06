How to use
==========

Clone and update submodules
---------------------------
    git clone git@github.com:yit/dotfiles.git
    cd dotfiles
    git submodule init  # --> Submodule 'vundle' (git://github.com/gmarik/vundle.git) registered for path '_vim/bundle/vundle'
    git submodule update

Make backups
------------
    cd ~/dotfiles
    make backup
    # mkdir ~/dotfiles_BAK
    # mv ~/.vim                 ~/dotfiles_BAK/.vim
    # mv ~/.vimrc               ~/dotfiles_BAK/.vimrc
    # mv ~/.gitconfig           ~/dotfiles_BAK/.gitconfig
    # mv ~/.bashrc              ~/dotfiles_BAK/.bashrc
    # mv ~/.git-completion.bash ~/dotfiles_BAK/.git-completion.bash

Make synbolic link 
------------------
    cd ~/dotfiles
    make remove
    # rm -r ~/.vim
    # rm -r ~/.vimrc
    # rm -r ~/.gitconfig
    # rm -r ~/.bashrc
    # rm -r ~/.git-completion.bash
    make link
    # ln -s ~/dotfiles/_vimrc               ~/.vimrc
    # ln -s ~/dotfiles/_vim                 ~/.vim
    # ln -s ~/dotfiles/_gitconfig           ~/.gitconfig
    # ln -s ~/dotfiles/_bashrc              ~/.bashrc
    # ln -s ~/dotfiles/_git-completion.bash ~/.git-completion.bash

