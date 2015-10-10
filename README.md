Here is my .vimrc:

'''vimrc
" Change windows files ’ to '  
command Chthem :%s/’/'/g

" Adding utf8 support
command UTF8 :0s/^/# coding=utf-8\r/ 

" Automatic reloading of vimrc
autocmd! bufwritepost .vimr source %

" Tab add and remove with < and > sings
vnoremap < <gv
vnoremap > >gv

" Sort alphabetically selection
let mapleader = ";"
vnoremap <Leader>s :sort<CR> 

" Set line numbers
set number

" Python folding
set nofoldenable

" No vertical line
set colorcolumn=0
let g:pymode_options_colorcolumn=0

" Python mode
set completeopt-=preview

" pathogene manage plugins
call pathogen#infect()

" NOT WORKING Use system clipboard
set clipboard=unnamedplus
" If clipboard=unnamedplus doesn't work 
" vmap "*y <Leader>y
'''
