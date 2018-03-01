# Notes:
#
# - If installing full Xcode, it's better to install that first from the app
#   store before running the bootstrap script. Otherwise, Homebrew can't access
#   the Xcode libraries as the agreement hasn't been accepted yet.

echo "Starting Brew..."

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

PACKAGES=(
  autoconf
  automake
  cheat
  gettext
  git
  heroku
  markdown
  mongodb
  postgresql
  python3
  readline
  terminal-notifier
  wget
  zsh
  zsh-syntax-highlighting
  zsh-history-substring-search
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
brew tap caskroom/cask

CASKS=(
  applepi-baker
  atom
  balsamiq-mockups
  chrome-devtools
  disk-inventory-x
  docker
  filezilla
  firefox
  flux
  folx
  google-chrome
  iterm2
  ivpn
  karabiner-elements
  mamp
  plex-media-server
  poedit
  skype
  slack
  sourcetree
  spectacle
  spotify
  vlc
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}