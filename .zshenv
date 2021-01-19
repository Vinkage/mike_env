# Give the XDG dirs
export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.data
export XDG_CACHE_HOME=~/.cache

# lang (so programs won't complain, I'm looking at you R.)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# nvim
export EDITOR=nvim

# Update the PATH for user bin
export PATH=$PATH:~/bin

# Emacs
export PATH=$PATH:~/.emacs.d/bin

# hunspell
export DICTPATH=/Users/mikevink/Library/Spelling/en-custom

# Alias
alias v="nvim"
alias ls="ls -Ga"

# pyenv
export PATH="/Users/mike/.pyenv/bin:$PATH"
