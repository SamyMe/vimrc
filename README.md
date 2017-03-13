###My .vimrc

Before copying the vimrc, some packages and plugins need to be installed, which you can do by executing the **copy.sh** script.

Installing **vimx** for system clipboard handling
```bash
sudo dnf install vim-X11
echo "alias vi='vimx'" >> ~/.bashrc
source ~/.bashrc
```

Installing **Vundle** for better scripts handling:
```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Inside vim do a: 
```
:PluginInstall
```

Installing **python-mode** plugin:
```bash
cd ~/.vim/bundle
git clone https://github.com/klen/python-mode
```

Interesting links to check:

[VIM and Python - a Match Made in Heaven](https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/#.V1rCrYQnlFs.hackernews)
