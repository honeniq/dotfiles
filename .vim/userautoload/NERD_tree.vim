" 引数なしでVimを起動すると、NERD treeが開く http://kokukuma.blogspot.jp/2011/12/vim-essential-plugin-nerdtree.html
let file_name = expand("%")
let NERDTreeShowHidden=1

if has('vim_starting') &&  file_name == ""
    autocmd VimEnter * NERDTree ./
endif
