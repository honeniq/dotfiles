#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.vim ~/.vim
mkdir ~/.vim/tmp

ln -sf ~/dotfiles/.pryrc ~/.pryrc

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
