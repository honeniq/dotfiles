syntax enable

" GUIとターミナルで使い分け
if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme solarized