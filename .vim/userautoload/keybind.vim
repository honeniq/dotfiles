" ----------------------------------------------------------------------------------------
"   ノーマルモード 
"     vimでキーマッピングする際に考えたほうがいいこと http://deris.hatenablog.jp/entry/2013/05/02/192415
" ----------------------------------------------------------------------------------------
" 一部無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>
nnoremap gQ <Nop>

" ノーマルモードではセミコロンをコロンに。
nnoremap ; :

" 折り返し行に対する移動を振り替え
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k


" pでペーストするときにヤンクされた文字列のみを対象にする（xで削除した文字が貼り付かない） 
nnoremap p "0p


" ----------------------------------------------------------------------------------------
"   インサートモード 
" ----------------------------------------------------------------------------------------

" ESCとCTRL-Cを入れ替え
inoremap <ESC> <C-c>
inoremap <C-c> <ESC>



" ----------------------------------------------------------------------------------------
"   プラグインのキーバインド
"     スペース→プラグインの頭文字→サブコマンド
" ----------------------------------------------------------------------------------------
"   unite.vim関係のキーバインド 
nnoremap <Space> <Nop>
nnoremap [unite] <Nop>
nmap     <Space>u [unite]

nnoremap [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap [unite]c :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap [unite]f :<C-u>Unite<Space>file<CR>
nnoremap [unite]h :<C-u>Unite<Space>history/yank<CR>
nnoremap [unite]m :<C-u>Unite<Space>file_mru<CR>
nnoremap [unite]r :<C-u>Unite<Space>register<CR>


" NERDTreeのON/OFF
nnoremap <Space>n :NERDTreeToggle<CR>


" vim-indent-guidesのON/OFF
nnoremap <Space>i :IndentGuidesToggle<CR>


" Markdownのプレビュー
"   http://yoshiko.hatenablog.jp/entries/2014/04/18
let g:previm_open_cmd = ''
nnoremap [previm] <Nop>
nmap <Space>p [previm]
nnoremap <silent> [previm]o :<C-u>PrevimOpen<CR>
nnoremap <silent> [previm]r :call previm#refresh()<CR>


" ----------------------------------------------------------------------------------------
"   画面分割を便利にする  http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
" ----------------------------------------------------------------------------------------
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
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')
