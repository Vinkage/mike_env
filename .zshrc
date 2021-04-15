# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/texlive/2021/bin/universal-darwin

# Path to your oh-my-zsh installation.
export ZSH="/Users/mike/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

bindkey -v
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
ZSH_DISABLE_COMPFIX=true
eval "$(direnv hook zsh)"
export BIB="/Users/mike/Dropbox/bibliography/references.bib"

alias ff="/Applications/Firefox.app/Contents/MacOS/firefox"

vimspect () {
     echo """{
    \"configurations\":{
    \"current file\": {
      \"adapter\": \"debugpy\",
      \"configuration\": {
        \"name\": \"currentFile_direnv\",
        \"type\": \"python\",
        \"request\": \"launch\",
        \"cwd\": \".\",
        \"python\": \"$(which python3)\",
        \"stopOnEntry\": true,
        \"console\": \"externalTerminal\",
        \"debugOptions\": [],
        \"program\": \"\${script:\${file\\\\\\}}\"
      }
    }
   }
}
     """ > .vimspector.json
}

it2prof() { echo -e "\033]50;SetProfile=$1\a" }

dirpy() {
    echo "layout python3" > .envrc
    direnv allow .
}

myls() {
echo """{
    \"venvPath\": \"$(pwd)/.direnv\",
    \"venv\": \"python-$(python3 --version | grep -o '\d[.]\d[.]\d')\"
}
""" > .pyrightconfig.json
}

pyper() {
    mkdir $1
    cd $1
    dirpy
}
 # test "${string#*$word}" != "$string" && echo "$word found in $string"

##  A functionalized version with some examples:

 # # contains(string, substring)
 # #
 # # Returns 0 if the specified string contains the specified substring,
 # # otherwise returns 1.
 # contains() {
 #     string="$1"
 #     substring="$2"
 #     if test "${string#*$substring}" != "$string"
 #     then
 #         return 0    # $substring is in $string
 #     else
 #         return 1    # $substring is not in $string
 #     fi
 # }

 # contains "abcd" "e" || echo "abcd does not contain e"
 # contains "abcd" "ab" && echo "abcd contains ab"
 # contains "abcd" "bc" && echo "abcd contains bc"
 # contains "abcd" "cd" && echo "abcd contains cd"
 # contains "abcd" "abcd" && echo "abcd contains abcd"
 # contains "" "" && echo "empty string contains empty string"
 # contains "a" "" && echo "a contains empty string"
 # contains "" "a" || echo "empty string does not contain a"
 # contains "abcd efgh" "cd ef" && echo "abcd efgh contains cd ef"
 # contains "abcd efgh" " " && echo "abcd efgh contains a space"

 #  # [1]: http://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_ch
##  ap02.htmltag_02_06_02
##
##  [fjarlq] [so/q/2829613] [cc by-sa 3.0]

doixref() {
curl -LH "Accept: text/bibliography; style=bibtex" $1
}

jvim() {
    result=${PWD##*/}
    /Users/mike/.config/nvim/venv/bin/python3 -m qtconsole --kernel $result
}
