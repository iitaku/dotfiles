#!/bin/bash
DOT_ROOT=$(dirname $(readlink -f $0))

#
# depends
#
git submodule init
git submodule update --recursive

#
# shell
#
# ln -sf ${DOT_ROOT}/.zshrc ${HOME}

#
# editor
#
ln -s ${DOT_ROOT}/.vim ${HOME}
ln -s ${DOT_ROOT}/.vimrc ${HOME}

#
# window manager
#
if [[ ! -e ${HOME}/.config/i3 ]]; then
  ln -sf ${DOT_ROOT}/.config/i3 ${HOME}/.config/i3
fi

#
# Screen emulator
#
ln -s ${DOT_ROOT}/.tmux/.tmux.conf ${HOME}
ln -s ${DOT_ROOT}/.tmux.conf.local ${HOME}

#
# GDB
#
ln -s ${DOT_ROOT}/.gdbinit ${HOME}

#
# git
#
cat <<EOF > ${HOME}/.gitconfig
[user]
	name = Takuro Iizuka
	email = iitaku@gmail.com
[alias]
	st = status -s
    lg = log --oneline --graph --decorate --branches --remotes --tags
[core]
	editor = vim
EOF
