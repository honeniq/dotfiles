" ----------------------------------------------------------------------------------------
"   ノーマルモード 
"     vimでキーマッピングする際に考えたほうがいいこと http://deris.hatenablog.jp/entry/2013/05/02/192415
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

" pでペーストするときにヤンクされた文字列のみを対象にする（xで削除した文字が貼り付かない） 
"nnoremap p "0p

" yankround設定
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)

" Yをj行末までのヤンクに設定(元々はyyと同じ機能)
nnoremap Y y$

" 検索ハイライト解除
nnoremap <C-h> :noh<CR>

" 選択範囲拡大 
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" ----------------------------------------------------------------------------------------
"   インサートモード 
" ----------------------------------------------------------------------------------------

" jjでインサートモードを抜ける
inoremap jj <ESC>

" ----------------------------------------------------------------------------------------
"   プラグインのキーバインド
"     スペース→プラグインの頭文字→サブコマンド
" ----------------------------------------------------------------------------------------
" I vim-indent-guidesのON/OFF
nnoremap <Space>i :IndentGuidesToggle<CR>

" N NERDTreeのON/OFF
nnoremap <Space>n :NERDTreeToggle<CR>

" M memolist
nnoremap <Space>mn :MemoNew<CR>
nnoremap <Space>ml :MemoList<CR>
nnoremap <Space>mg :MemoGrep<CR>

" P プレビュー(Markdown)
"   http://yoshiko.hatenablog.jp/entries/2014/04/18
let g:previm_open_cmd = ''
nnoremap [previm] <Nop>
nmap <Space>p [previm]
nnoremap <silent> [previm]o :PrevimOpen<CR>
nnoremap <silent> [previm]r :call previm#refresh()<CR>

" Q vim-quickrun
nnoremap <Space>q :QuickRun<CR>

" S syntastic
nnoremap <Space>s :SyntasticCheck<CR>

" U  unite.vim関係のキーバインド 
nnoremap <Space> <Nop>
nnoremap [unite] <Nop>
nmap     <Space>u [unite]
nnoremap [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap [unite]c :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap [unite]f :<C-u>Unite<Space>file<CR>
nnoremap [unite]h :<C-u>Unite<Space>history/yank<CR>
nnoremap [unite]m :<C-u>Unite<Space>file_mru<CR>
nnoremap [unite]r :<C-u>Unite<Space>register<CR>
nnoremap [unite]p :<C-u>Unite<Space>-auto-preview colorscheme<CR>

" Incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" ----------------------------------------------------------------------------------------
" NeoSnippet
" ----------------------------------------------------------------------------------------
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif


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
