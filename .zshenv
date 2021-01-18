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

# Bindings
export KEYTIMEOUT=20
bindkey -M viins 'kj' vi-cmd-mode
bindkey -M visual 'kj' vi-cmd-mode

# pyenv
export PATH="/Users/mikevink/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

# Go
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH
