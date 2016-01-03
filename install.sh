#
# shell
#
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
cp -R .zshrc ${HOME}

#
# editor
#
cp -R .vimrc ${HOME}
cp -R .vim/ ${HOME}
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

#
# window manager
#
cp -R .wmii/ ${HOME}

#
# keybind
#
cp -R .Xmodmap ${HOME}

#
# development
#
cp -R .gdb/ ${HOME}
cp -R .gdbinit ${HOME}

cp -R .clewn_keys ${HOME}
