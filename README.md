# How to use

## make backups
mv ~/.vimrc ~/.vimrc.BAK
mv ~/.gitconfig ~/.gitconfig.BAK

## make synbolic link 
ln -s ~/dotfiles/_vimrc ~/.vimrc
ln -s ~/dotfiles/_gitconfig ~/.gitconfig

## copy to your setting PATH
cp ~/dotfiles/git_diff_wrapper /usr/local/bin/
