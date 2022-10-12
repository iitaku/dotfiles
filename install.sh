#!/usr/bin/zsh
setopt EXTENDED_GLOB

DOT_ROOT=$(dirname $(readlink -f $0))

#
# depends
#
git submodule init
git submodule update --recursive

#
# shell
#
ln -sf ${DOT_ROOT}/.zshrc ${HOME}

#
# editor
#
ln -sf ${DOT_ROOT}/.vim ${HOME}
ln -sf ${DOT_ROOT}/.vimrc ${HOME}
ln -sf ${DOT_ROOT}/.gvimrc ${HOME}
ln -sf ${DOT_ROOT}/nvim ${HOME}/.config/nvim

#
# window manager
#
ln -sf ${DOT_ROOT}/.config/i3 ${HOME}/.config/i3

#
# keybind
#
ln -sf ${DOT_ROOT}/.Xmodmap ${HOME}

#
# development
#
# mkdir ${HOME}/.gdb
# svn co svn://gcc.gnu.org/svn/gcc/trunk/libstdc++-v3/python ${HOME}/.gdb/python
# ln -s ${DOT_ROOT}/.gdbinit ${HOME}

ln -sf ${DOT_ROOT}/.clewn_keys ${HOME}
