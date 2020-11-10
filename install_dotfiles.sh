#!/bin/bash
set -eux

backup_dir=$HOME/dotfiles/backup/$(date "+%Y%m%d%H%M%S")
if [ -d $backup_dir ]; then
    echo "duplicate backup dir."
    exit 1
fi
mkdir -p $backup_dir

#DOT_FILES=(.bashrc .bash_profile .vimrc .gitconfig .tmux.conf .tigrc)
DOT_FILES=(.zshenv .zshrc .zprofile .bashrc .bash_profile .gitconfig .vimrc)

for file in ${DOT_FILES[@]}
do
    if [ -f $HOME/$file ]; then
        if [ ! -L $HOME/$file ]; then
            mv $HOME/$file $backup_dir/
            ln -s $HOME/dotfiles/dotfiles/$file $HOME/$file
        fi
    else
        ln -s $HOME/dotfiles/dotfiles/$file $HOME/$file
    fi
done
