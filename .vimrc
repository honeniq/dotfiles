set nocompatible               " Be iMproved
set encoding=utf8

" 分割した設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
runtime! userautoload/*.vim

" カーソル行をハイライトする
set cursorline

colorscheme jellybeans
set background=dark
set t_Co=256

" スワップ・バックアップファイルの置き場
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

" カレントディレクトリを編集中のファイルの親に
set autochdir

" CLI 挿入モードでカーソルキーがちゃんと使えるように
if !has('gui_running')
    set notimeout
    set ttimeout
    set timeoutlen=100
    "imap OA <Up>
    "imap OB <Down>
    "imap OC <Right> 
    "imap OD <Left>
endif

