if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kana/vim-submode'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'mattn/benchvimrc-vim'
NeoBundle 'thinca/vim-scouter'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'glidenote/memolist.vim'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'lukaszkorecki/workflowish'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'ConradIrwin/vim-bracketed-paste'

" ColorScheme
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'

" Markdownのプレビュー用
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

" Ruby支援
NeoBundle 'tpope/vim-endwise'
NeoBundle 'glidenote/serverspec-snippets'
NeoBundle 'tacahilo/itamae-snippets'


" NeoCompleteとNeoComplcacheの使い分け
"   http://rhysd.hatenablog.com/entry/2013/08/24/223438
function! Meet_neocomplete_requirements()
    return has('lua') && (v:version > 703 || (v:version == 703 && has('patch885')))
endfunction
if Meet_neocomplete_requirements()
    NeoBundle 'Shougo/neocomplete.vim'
    NeoBundleFetch 'Shougo/neocomplcache.vim'
else
    NeoBundleFetch 'Shougo/neocomplete.vim'
    NeoBundle 'Shougo/neocomplcache.vim'
endif

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
