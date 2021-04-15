# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_DISABLE_COMPFIX="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"
HIST_SIZE=5000

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages themes z sudo tmux fzf osx brew tig gnu-utils)
plugins=(jenv gradle $plugins)
plugins=(yarn ng $plugins)
plugins=(docker docker-compose minikube kubectl $plugins)
plugins=(rust cargo $plugins)
plugins=(golang $plugins)
# plugins=(zsh-autosuggestions $plugins)

fpath=(/usr/local/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh

source ~/.profile

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
[ -f ~/.alias.sh ] && source ~/.alias.sh

DEFAULT_USER="$USER"

function prev() {
   PREV=$(fc -lrn | head -n 1)
   sh -c "pet new `printf %q "$PREV"`"
}

function pet-select() {
   BUFFER=$(pet search --query "$LBUFFER")
   CURSOR=$#BUFFER
   zle redisplay
}
zle -N pet-select
stty -ixon
bindkey '^s' pet-select

# Use ~~ as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='**'

# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow \
     --exclude ".idea" \
     --exclude ".class" \
     --exclude ".DS_Store" \
     --exclude "target" \
     --exclude ".git" \
     . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow \
     --exclude ".idea" \
     --exclude "target" \
     --exclude ".git" \
     . "$1"
}

listening() {
  if [ $# -eq 0 ]; then
    lsof -iTCP -sTCP:LISTEN -n -P
  elif [ $# -eq 1 ]; then
    lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
  else
    echo "Usage: listening [pattern]"
  fi
}

pports() {
  lsof -p$1 -Pn|grep TCP|grep LISTEN
}

# export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:
