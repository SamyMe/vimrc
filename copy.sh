# Copy vimrc into home and make a copy of the old one
cp ~/.vimrc ~/.OLD-vimrc
cp .vimrc ~/.vimrc 

# Installing vimx for system clipboard handling
sudo dnf install vim-X11
echo "alias vi='vimx'" > ~/.bashrc
source ~/.bashrc

# Installing pathogen for better scripts handling
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Installing python-mode plugin
cd ~/.vim/bundle
git clone https://github.com/klen/python-mode
