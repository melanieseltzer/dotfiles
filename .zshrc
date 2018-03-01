# Setting $PATH and $ZSH and $ZSH_CUSTOM
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/dotfiles/oh-my-zsh/custom

# ZSH theme to display.
ZSH_THEME="cloud"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History time stamps
HIST_STAMPS="yyyy-mm-dd"

# Oh-my-zsh plugins
plugins=( git git-auto-status last-working-dir lol npm osx web-search wd )
