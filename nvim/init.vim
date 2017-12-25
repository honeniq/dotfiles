if !&compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
if has('nvim')
  let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
else
  let s:toml_file = $XDG_CONFIG_HOME .'/vim/dein.toml'
endif
  
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" }}}

" ----------------------------------------------------------------------------------------
"   Vim一般
" ----------------------------------------------------------------------------------------
" スワップ・バックアップファイルの置き場
let directory = $XDG_CACHE_HOME . '/tmp'
let backupdir = $XDG_CACHE_HOME . '/tmp'
let undodir = $XDG_CACHE_HOME . '/tmp'

" シンタックスハイライト
syntax enable

" カーソル行をハイライトする
set cursorline
" カレントディレクトリを編集中のファイルの親に
set autochdir

" 検索パターンにおいて大文字と小文字を区別しない。（有効:ignorecase/無効:noignorecase）
:set noignorecase
" 検索パターンが大文字を含んでいたらオプション 'ignorecase' を上書きする。（有効:smartcase/無効:nosmartcase）
:set smartcase

" ファイル内の <Tab> が対応する空白の数。
:set tabstop=2
" <Tab> の挿入や <BS> の使用等の編集操作をするときに、<Tab> が対応する空白の数。
:set softtabstop=2
" インデントの各段階に使われる空白の数。
:set shiftwidth=2
" Insertモードで <Tab> を挿入するとき、代わりに適切な数の空白を使う。（有効:expandtab/無効:noexpandtab）
:set expandtab

" 入力されているテキストの最大幅。行がそれより長くなると、この幅を超えないように空白の後で改行される。値を 0 に設定すると無効になる。
:set textwidth=0
" 新しい行を開始したとき (Insertモードで <CR> を打ち込むか、コマンド "o"や "O" を使ったとき)、新しい行のインデントを現在行と同じくする。（有効:autoindent/無効:noautoindent）
:set autoindent

" オンのときは、ウィンドウの幅より長い行は折り返され、次の行に続けて表示される。（有効:wrap/無効:nowrap）
:set wrap
:set display=lastline

" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索する。（有効:wrapscan/無効:nowrapscan）
:set wrapscan
" オンのとき、コマンドライン補完が拡張モードで行われる。（有効:wildmenu/無効:nowildmenu）
:set wildmenu

" 閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする。（有効:showmatch/無効:noshowmatch）
:set showmatch
" showmatch で対応する括弧にジャンプする時間の設定。0.1秒単位で、設定値が5なら0.5秒
:set matchtime=1

" 毎行の前に行番号を表示する。（有効:number/無効:nonumber）
:set number
" カーソルが何行目の何列目に置かれているかを表示する。（有効:ruler/無効:noruler）
:set ruler
" タブ文字を CTRL-I で表示し、行末に $ で表示する。（有効:list/無効:nolist）
":set list
:set listchars=tab:>-,extends:<,trail:-,eol:<

" 最下ウィンドウにいつステータス行が表示されるかを設定する。
"               0: 全く表示しない
"               1: ウィンドウの数が2以上のときのみ表示
"               2: 常に表示
:set laststatus=2
" コマンド (の一部) を画面の最下行に表示する。（有効:showcmd/無効:noshowcmd）
:set showcmd

" ファイルを上書きする前にバックアップを作る。書き込みが成功してもバックアップはそのまま取っておく。（有効:backup/無効:nobackup）
:set nobackup
" ファイルの上書きの前にバックアップを作る。オプション 'backup' がオンでない限り、バックアップは上書きに成功した後削除される。（有効:writebackup/無効:nowritebackup）
:set writebackup

" スクロール時に指定した行数分だけ余裕を持たせる
:set scrolloff=6

" 折りたたみ設定
:set foldmethod=indent
:set foldlevel=100

" モードラインを有効にする
:set modeline

" 全角記号文字の表示対策
if &encoding == 'utf-8'
  set ambiwidth=double
endif

" ----------------------------------------------------------------------------------------
"   キーバインド
" ----------------------------------------------------------------------------------------
" 一部無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>
nnoremap gQ <Nop>

" ノーマルモードではセミコロンをコロンに
nnoremap ; :

" 折り返し行に対する移動を振り替え
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" Yをj行末までのヤンクに設定(元々はyyと同じ機能)
nnoremap Y y$

" 検索ハイライト解除
nnoremap <C-h> :noh<CR>

" 分割・タブを使いやすく http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap s= <C-w>=
nnoremap so <C-w>_<C-w>
nnoremap sO <C-w>=
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>


" jjでインサートモードを抜ける
inoremap jj <ESC>


" ----------------------------------------------------------------------------------------
"   ファイルタイプ別
" ----------------------------------------------------------------------------------------
" Markdown
autocmd BufNewFile,BufRead *.md :set filetype=markdown

" Ruby DSL
autocmd BufNewFile,BufRead {Gemfile,Vagrantfile,Berksfile,Guardfile} set filetype=ruby

