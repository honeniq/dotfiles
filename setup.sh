#!/bin/sh

ln -sf ~/dotfiles/.vimrc     ~/.vimrc
ln -sf ~/dotfiles/.gvimrc    ~/.gvimrc
ln -sf ~/dotfiles/.vim       ~/.vim
mkdir ~/.vim/tmp

ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.pryrc     ~/.pryrc

ln -sf ~/dotfiles/.zlogin    ~/.zlogin
ln -sf ~/dotfiles/.zlogout   ~/.zlogout
ln -sf ~/dotfiles/.zpreztorc ~/.zpreztorc
ln -sf ~/dotfiles/.zprofile  ~/.zprofile
ln -sf ~/dotfiles/.zshenv    ~/.zshenv
ln -sf ~/dotfiles/.zshrc     ~/.zshrc

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
