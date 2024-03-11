#!/bin/bash
setopt EXTENDED_GLOB

DOT_ROOT=$(dirname $(readlink -f $0))

#
# depends
#
git submodule init
git submodule update --recursive

#
# editor
#
ln -s ${DOT_ROOT}/.vim ${HOME}
ln -s ${DOT_ROOT}/.vimrc ${HOME}

#
# Screen emulator
#
ln -s ${DOT_ROOT}/.tmux/.tmux.conf ${HOME}

#
# GDB
#
ln -s ${DOT_ROOT}/.gdbinit ${HOME}
