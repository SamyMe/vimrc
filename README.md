###My .vimrc

Before copying the vimrc, some packages and plugins need to be installed, which you can do by executing the **copy.sh** script.

Installing **vimx** for system clipboard handling
```bash
sudo dnf install vim-X11
echo "alias vi='vimx'" > ~/.bashrc
source ~/.bashrc
```

Installing **pathogen** for better scripts handling:
```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
```

Installing **python-mode** plugin:
```bash
cd ~/.vim/bundle
git clone https://github.com/klen/python-mode
```
Vimrc file:

```bash
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
```
