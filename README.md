How to use
==========

Make backups
------------
    mv ~/.vimrc ~/.vimrc.BAK
    mv ~/.gitconfig ~/.gitconfig.BAK
    mv ~/.bashrc ~/.bashrc.BAK

Make synbolic link 
------------------
    ln -s ~/dotfiles/_vimrc ~/.vimrc
    ln -s ~/dotfiles/_gitconfig ~/.gitconfig
    ln -s ~/dotfiles/_bashrc ~/.bashrc

Copy to your setting PATH
-------------------------
    cp ~/dotfiles/git_diff_wrapper /usr/local/bin/
