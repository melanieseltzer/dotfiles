# Get current dir
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Starting install..."

####################
# Brew and Cask
####################

source "$DOTFILES_DIR/brew.sh"

####################
# Symlinks
####################

echo "Starting Symlinks..."

ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitignore_global" ~
ln -sf "$DOTFILES_DIR/.zshrc" ~
if [[ ! -d ~/.atom ]]; then mkdir ~/.atom/; fi
ln -sf "$DOTFILES_DIR/atom/config.cson" ~/.atom/
ln -sf "$DOTFILES_DIR/atom/keymap.cson" ~/.atom/
ln -sf "$DOTFILES_DIR/atom/styles.less" ~/.atom/

####################
# Atom
####################

echo "Starting Atom..."

# Install packages based on packages.txt
# Workaround to skip installation if first package exists
# See https://github.com/atom/apm/issues/170
if [[ ! -d "$HOME/.atom/packages/atom-beautify" ]]; then
	if [ -x "$(command -v apm)" ]; then
		apm stars --install && apm list --bare --installed --dev false > $DOTFILES_DIR/atom/packages.txt && apm install --packages-file $DOTFILES_DIR/atom/packages.txt
	else
		echo "Atom not installed, skipping."
	fi
else
	echo "Atom packages already installed, skipping."
fi

echo "Installation complete..."
