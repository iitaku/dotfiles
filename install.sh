cp -R .vim/ ${HOME}
cp -R .wmii/ ${HOME}
cp -R .Xmodmap ${HOME}
cp -R .clewn_keys ${HOME}
cp -R .vimrc ${HOME}
cp -R .zshrc ${HOME}
cp -R .gdb/ ${HOME}
cp -R .gdbinit ${HOME}

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
