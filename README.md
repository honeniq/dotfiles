## dotfiles使い方

自分のための備忘録。


### dotfiles

#### ghq入れる

goが必要。

```
~$ go get github.com/motemen/ghq
```

#### dotfilesをgetする

```
~$ ghq get https://github.com/honeniq/dotfiles
```

``~/.ghq/github.com/honeniq/dotfiles``に入る。


### fish環境 

#### .config/fish にリンク

```
~$ ln -s ~/.ghq/github.com/honeniq/dotfiles/fish ~/.config/
```

#### fish shell インストール

ubuntuの場合。

```
~$ sudo apt-add-repository ppa:fish-shell/release-2
~$ sudo apt-get update
~$ sudo apt-get install fish
```

#### fisherman

```
~$ curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
```

#### プラグイン更新

```
~$ fish
~$ fisher update
```

### ユーティリティコマンド関係

Debian Manpageの[file-hierarchy(7)](https://manpages.debian.org/jessie/systemd/file-hierarchy.7.en.html)によると、systemdを使っているディストリビューションでは``~/.local/bin``にもPATHが通るものらしい。 
ホームディレクトリ配下で遠慮なく触れるので、ここに置くようにしてみる。

#### gibo

```
~$ ghq get simonwhitaker/gibo
~$ ln -s ~/.ghq/github.com/simonwhitaker/gibo/gibo ~/.local/bin/
```

### Vim関係

#### vimリンク作成

```
~$ ln -s ~/.ghq/github.com/honeniq/dotfiles/nvim/init.vim ~/.vimrc
~$ ln -s ~/.ghq/github.com/honeniq/dotfiles/nvim/dein.toml ~/.config/vim/
```


#### Neovimリンク作成

```
~$ ln -s ~/.ghq/github.com/honeniq/dotfiles/nvim/ ~/.config/nvim
```
#### Python3のneovimを入れる

```
~$ pip3 install neovim
```

#### 初回起動時

``UpdateRemotePlugins``を実行する。


#### dein

deinを導入する。

```
~$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh 
~$ sh ./installer.sh ~/.cache/dein
```

#### プラグインのインストール

Vimを立ち上げるとプラグインのインストールが始まる。


### Ruby関係

#### rbenv

```
~$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```

``rbenv rehash``とかはfishのプラグインがやってくれる。

#### ruby-build

```
~$ git clone https://github.com/rbenv/ruby-build.git (eval "rbenv root")/plugins/ruby-build
```

#### rbenv-binstubs

```
~$ git clone https://github.com/ianheggie/rbenv-binstubs.git (eval "rbenv root")/plugins/rbenv-binstubs
```
