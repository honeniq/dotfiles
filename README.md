## dotfiles使い方

自分のための備忘録。
今のところVimの設定だけ。

#### git clone

dotfiles以下をクローン。

```
~$ git clone https://github.com/honeniq/dotfiles/ ~/dotfiles/
```

#### リンク作成

```
~$ ln -s ~/dotfiles/.vimrc ~/.vimrc
~$ ln -s ~/dotfiles/.gvimrc ~/.gvimrc
~$ ln -s ~/dotfiles/.vim ~/.vim
```

#### NeoBundle

NeoBundleを導入する。

```
~$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

#### プラグインのインストール

Vimを立ち上げるとプラグインのインストールが始まる。

```
~$ vim
Not installed bundles:  ['vim-colors-solarized', 'nerdtree', 'vim-submode', 'lightline.vim', 'unite.vim']
Install bundles now?
(y)es, [N]o: y
```
