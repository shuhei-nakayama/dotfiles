# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# About .bash_profile
# - loaded at ssh-login.(also tmux, not at /bin/bash nor aws workspaces' Terminal.)
# - env should be set in it.(shared by child process)

# Added
export HISTSIZE=100000
export HISTFILESIZE=100000
export PATH="/usr/local/bin:$PATH"

## pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#if command -v pyenv 1>/dev/null 2>&1; then
#    eval "$(pyenv init -)"
#fi
