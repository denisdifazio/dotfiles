#! /bin/bash

# get the absolute path of our dotfiles repository
DIR=~/.vim

# download and install plug-vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# overwrite existing symlinks if necessary
ln -sf $DIR/.bashrc ~/.bashrc
ln -sf $DIR/.inputrc ~/.inputrc
ln -sf $DIR/.tmux.conf ~/.tmux.conf
ln -sf $DIR/.profile ~/.profile

# apply the new .bashrc
. ~/.bashrc
