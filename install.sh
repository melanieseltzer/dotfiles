# Get current dir
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Starting install..."

####################
# Symlinks
####################

echo "Starting Symlinks..."

ln -sf "$DOTFILES_DIR/.eslintrc" ~
ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitignore_global" ~
ln -sf "$DOTFILES_DIR/.zshrc" ~
ln -sf "$DOTFILES_DIR/.hyper.js" ~

echo "Installation complete..."
