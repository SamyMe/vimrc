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
