set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'Valloric/YouCompleteMe'

Plugin 'kien/ctrlp.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set encoding=utf-8

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

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Set line numbers
set number

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" About Indents
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
" set tabstop=2

" No vertical line
set colorcolumn=0
let g:pymode_options_colorcolumn=0

" Python mode
set completeopt-=preview

" pathogene manage plugins
" call pathogen#infect()


" Simplify multiple register copy
vmap ay "ay
vmap zy "zy
vmap ey "ey

" Simple Comment/Uncomment
vmap ;c :'<,'>s/^\(\s*\)/\1# /<CR><Space>
map ;c :s/^\(\s*\)/\1# /<CR><Space>
vmap ;u :'<,'>s/^\(\s\)*# /\1/<CR><Space>
map ;u :s/^\(\s*\)# /\1/<CR><Space>

" Simplify multiple register past
map ap "ap
map zp "zp
map ep "ep


" Tabs navigation
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

" NOT WORKING Use system clipboard
set clipboard=unnamedplus
" If clipboard=unnamedplus doesn't work 
" vmap "*y <Leader>y


" add YouCompleteMe plugin 
" https://github.com/Valloric/YouCompleteMe


" Good Ref Articles
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
