#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
mkdir ~/.vim/tmp

ln -sf ~/dotfiles/.pryrc ~/.pryrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
