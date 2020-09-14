#!/bin/bash
set -eux

has() {
    type "$1" > /dev/null 2>&1
}

# git
# tmux
# vim

# vim-plug
VIM_PLUG_FILE=$HOME/.vim/autoload/plug.vim
if [ ! -e $VIM_PLUG_FILE ]; then 
    echo 'installing [vim-plug]...'
    curl -fLo $VIM_PLUG_DIR --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# tig
# TODO

# fzf
if ! has fzf
then
    echo 'installing [fzf]...questions should be all [y]es.'
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
fi
