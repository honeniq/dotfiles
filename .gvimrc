"---------------------------------------------------------------------------
" フォント設定:
"
set antialias " アンチエイリアス

if has('win32')
	set guifont=Ricty:h14
elseif has('mac')
	set guifont=Ricty:h18
endif

" 一部のUCS文字の幅を自動計測して決める
if has('kaoriya')
  set ambiwidth=auto
endif


"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=100

" ウインドウの高さ
set lines=60

" コマンドラインの高さ(GUI使用時)
set cmdheight=2

colorscheme solarized
set background=dark