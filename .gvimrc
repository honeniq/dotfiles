"---------------------------------------------------------------------------
" フォント設定:
"
set antialias " アンチエイリアス

if has('win32')
	set guifont=Migu_1M:h12

elseif has('mac')
	set guifont=Ricty:h18
endif

if has('kaoriya')
  " 一部のUCS文字の幅を自動計測して決める
  set ambiwidth=auto
  
  " 半透明設定
  autocmd GUIEnter    * set transparency=240
  autocmd FocusGained * set transparency=240
  autocmd FocusLost   * set transparency=200
endif


"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=128

" ウインドウの高さ
set lines=48

" コマンドラインの高さ(GUI使用時)
set cmdheight=2

" タブを表示 0=表示しない 1=タブがあるときは表示 2=常に表示
set showtabline=2

" 配色設定
colorscheme jellybeans
set background=dark

" カーソル行をハイライトする(gVimだけ有効にしたり使い分ける用)
set cursorline
