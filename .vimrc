set nocompatible               " Be iMproved
set encoding=utf8

set runtimepath+=~/.vim/


" ここからdein.vimの設定
set runtimepath^=~/.cache/dein/repos/github.com/Shougo/dein.vim/
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let g:rc_dir = expand('~/.vim/rc/')


" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

runtime! rc/basic.vim 
runtime! rc/filetype.vim 
runtime! rc/keybind.vim 
runtime! rc/visual.vim 

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
