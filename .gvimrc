"---------------------------------------------------------------------------
" フォント設定:
"
set antialias " アンチエイリアス

set guifont=Ricty:h18

" 一部のUCS文字の幅を自動計測して決める
if has('kaoriya')
  set ambiwidth=auto
endif


"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=160

" ウインドウの高さ
set lines=80

" コマンドラインの高さ(GUI使用時)
set cmdheight=2

" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
colorscheme evening " (GUI使用時)
