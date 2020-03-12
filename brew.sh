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
  coreutils
  yarn
  zsh-syntax-highlighting
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

CASKS=(
  firefox
  folx
  google-chrome
  hyper
  ivpn
  kap
  karabiner-elements
  plex-media-server
  postman
  rectangle
  rocket
  slack
  spotify
  visual-studio-code
  vlc
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}
