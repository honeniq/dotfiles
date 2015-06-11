" Markdown
autocmd BufNewFile,BufRead *.md :set filetype=markdown

" Ruby DSL
autocmd BufNewFile,BufRead {Gemfile,Vagrantfile,Berksfile,Guardfile} set filetype=ruby
