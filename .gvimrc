"---------------------------------------------------------------------------
" フォント設定:
"
set antialias " アンチエイリアス

if has('win32')
	set guifont=Migu_1M:h12
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
set columns=150

" ウインドウの高さ
set lines=48

" コマンドラインの高さ(GUI使用時)
set cmdheight=2

colorscheme solarized
set background=dark
