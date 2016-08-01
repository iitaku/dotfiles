#!/usr/bin/zsh
setopt EXTENDED_GLOB

DOT_ROOT=$(dirname $(readlink -f $0))

#
# depends
#
git submodule init
git submodule update

#
# shell
#
ln -s ${DOT_ROOT}/.zprezto ${HOME}
for rcfile in "${HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${HOME}/.${rcfile:t}"
done

#
# editor
#
ln -s ${DOT_ROOT}/.vimrc ${HOME}
ln -s ${DOT_ROOT}/.vim ${HOME}

#
# window manager
#
ln -s ${DOT_ROOT}/.wmii ${HOME}

#
# keybind
#
ln -s ${DOT_ROOT}/.Xmodmap ${HOME}

#
# development
#
ln -s ${DOT_ROOT}/.gdb ${HOME}
ln -s ${DOT_ROOT}/.gdbinit ${HOME}

ln -s ${DOT_ROOT}/.clewn_keys ${HOME}
