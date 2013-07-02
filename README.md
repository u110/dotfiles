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
    mv ~/.vim ~/.vim.BAK
    mv ~/.vimrc ~/.vimrc.BAK
    mv ~/.gitconfig ~/.gitconfig.BAK
    mv ~/.git-completion.bash ~/.git-completion.bash
    mv ~/.bashrc ~/.bashrc.BAK

Make synbolic link 
------------------
    ln -s ~/dotfiles/_vimrc ~/.vimrc
    ln -s ~/dotfiles/_vim ~/.vim
    ln -s ~/dotfiles/_gitconfig ~/.gitconfig
    ln -s ~/dotfiles/_git-completion.bash ~/.git-completion.bash
    ln -s ~/dotfiles/_bashrc ~/.bashrc

