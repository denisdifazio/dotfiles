#! /bin/bash

# get the absolute path of our dotfiles repository
DIR=$(cd `dirname $0` && pwd)

# overwrite existing symlinks if necessary
ln -sf $DIR/.bashrc ~/.bashrc
ln -sf $DIR/.inputrc ~/.inputrc
ln -sf $DIR/.tmux.conf ~/.tmux.conf

# apply the new .bashrc
. ~/.bashrc
