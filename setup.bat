mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\.gvimrc" %HOMEPATH%"\dotfiles\.gvimrc"
mklink /D %HOMEPATH%"\.vim" %HOMEPATH%"\dotfiles\.vim"
mkdir %HOMEPATH%"\.vimrc\tmp"

mklink %HOMEPATH%"\.pryrc" %HOMEPATH%"\dotfiles\.pryrc"

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

exit 0
