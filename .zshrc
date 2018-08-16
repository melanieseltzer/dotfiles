# Setting $PATH and $ZSH and $ZSH_CUSTOM
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/dotfiles/oh-my-zsh/custom

# env vars
source $HOME/dotfiles/.env

# Enable command auto-correction.
ENABLE_CORRECTION="false"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History time stamps
HIST_STAMPS="yyyy-mm-dd"

# Oh-my-zsh plugins
plugins=( git git-auto-status last-working-dir lol npm osx web-search wd zsh-syntax-highlighting)

# Source
source $ZSH/oh-my-zsh.sh

# Use the Pure prompt https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# -------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------

# Brew
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

# Git
alias fetchpull='git fetch origin master && git pull origin master'

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
