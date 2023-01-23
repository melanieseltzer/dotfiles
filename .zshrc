# Use the Pure prompt https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# -------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

# -------------------------------------------------------------------
# Plugins
# -------------------------------------------------------------------

plugins=(git git-auto-status last-working-dir lol npm macos web-search wd zsh-syntax-highlighting)

# -------------------------------------------------------------------
# Variables/exports
# -------------------------------------------------------------------

DOTFILES=$HOME/dotfiles
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$DOTFILES/oh-my-zsh/custom

fpath+=$HOME/.zsh/pure

# Append to PATH
path+=$HOME/bin
path+=$HOME/Library/pnpm
path+=/Applications/Postgres.app/Contents/Versions/latest/bin # expose Postgres.app CLI tools

ENABLE_CORRECTION="false" #command auto-correction
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh
source $DOTFILES/.env

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH
