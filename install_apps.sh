#!/bin/bash
set -eux

has() {
    type "$1" > /dev/null 2>&1
}

confirm() {
    echo -n "Go further? [y/N]: "
    read ANS

    case $ANS in
    [Yy]* )
        echo "Yes"
        ;;
    * )
        echo "No"
        exit 1
        ;;
    esac
}

# homebrew - failed.
 
sudo yum groupinstall 'Development Tools' -y

# git
# tmux
# vim
# tig

# vim-plug
VIM_PLUG_FILE=$HOME/.vim/autoload/plug.vim
if [ ! -e $VIM_PLUG_FILE ]; then 
    echo 'installing [vim-plug]...'
    curl -fLo $VIM_PLUG_DIR --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# fzf
if ! has fzf
then
    echo 'installing [fzf]...questions should be all [y]es.'
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
fi

## pyenv
#if ! has pyenv
#then
#    echo 'installing [pyenv]...'
#    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
#    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
#    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
#    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
#
#    echo 'installing [*-devel]s for python-build...'
#    sudo yum install gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel -y
#fi
