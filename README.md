# dotfiles

## Windows <-> WSL Clipboard

https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl

## Prerequisites

* nodejs >= 8.0

### NodeJS

Install node with NVM: https://github.com/nvm-sh/nvm

### Vim Update

```
sudo apt remove vim vim-runtime gvim

sudo apt update

sudo apt install -y git

sudo apt install -y build-essential

cd ~

git clone https://github.com/vim/vim.git

cd vim

rm src/auto/config.cache # optional - required on the second try

make distclean # optional - required on the second try

./configure --with-features=huge \
            --enable-multibyte \
            --enable-python3interp \
            --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu \ # check directory existence
            --enable-cscope \
            --enable-fail-if-missing \
            --with-x \
            --prefix=/usr/local

make

sudo make install
```

## Install

Clone to ~/.vim and execute init.sh

## Font

Hack
