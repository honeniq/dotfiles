" 分割した設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
runtime! userautoload/*.vim

" カーソル行をハイライトする
set cursorline

colorscheme solarized
set background=dark


" スワップ・バックアップファイルの置き場
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

" カレントディレクトリを編集中のファイルの親に
set autochdir

