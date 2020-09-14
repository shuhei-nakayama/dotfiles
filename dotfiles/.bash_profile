# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# About .bash_profile
# - loaded at ssh-login.(not at /bin/bash)
# - env should be set in it.(shared by child process)

# Added
export HISTSIZE=100000
export HISTFILESIZE=100000
export PATH="/usr/local/bin:$PATH"

# anyenv
#export PATH="$HOME/.anyenv/bin:$PATH"
#eval "$(anyenv init -)"
#eval "$(nodenv init -)"
#eval "$(pyenv init -)"
