rm -rf ~/.vim/bundle || true
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

if [ -f /etc/redhat-release ]; then
    sudo dnf install -y ctags
fi

if [ -f /etc/lsb-release ]; then
    sudo apt install -y ctags
fi
