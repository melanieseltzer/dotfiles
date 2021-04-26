# Notes:
#
# - If installing full Xcode, it's better to install that first from the app
#   store before running the bootstrap script. Otherwise, Homebrew can't access
#   the Xcode libraries as the agreement hasn't been accepted yet.

echo "Starting Brew..."

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update homebrew recipes
brew update

PACKAGES=(
  coreutils
  zsh-syntax-highlighting
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

CASKS=(
  firefox
  google-chrome
  hyper
  kap
  karabiner-elements
  plex-media-server
  postman
  rectangle
  rocket
  slack
  spotify
  switchhosts
  visual-studio-code
  vlc
)

echo "Installing cask apps..."
brew install --cask ${CASKS[@]}
