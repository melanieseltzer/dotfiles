# Setting $PATH and $ZSH and $ZSH_CUSTOM
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/dotfiles/oh-my-zsh/custom

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
alias gcm='git checkout master'
alias gcnb='git checkout -b'
alias gp='git pull'
alias gpo='git pull origin'
alias gbd='git branch -D'
alias gpu='git push'
alias gpuo='git push origin'