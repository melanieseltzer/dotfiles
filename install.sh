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

ln -sf "$DOTFILES_DIR/git/.gitconfig" ~
ln -sf "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sf "$DOTFILES_DIR/zsh/.zshrc" ~
if [[ ! -d ~/.atom ]]; then mkdir ~/.atom/; fi
ln -sf "$DOTFILES_DIR/atom/config.cson" ~/.atom/
ln -sf "$DOTFILES_DIR/atom/styles.less" ~/.atom/

####################
# Atom
####################
# To create a list of current packages, use the following command:
# apm list --bare --installed --dev false > packages.txt

echo "Starting Atom..."

# Install packages based on packages.txt
# Workaround to skip installation if first package exists
# See https://github.com/atom/apm/issues/170
if [[ ! -d "$HOME/.atom/packages/atom-beautify" ]]; then
	if [ -x "$(command -v apm)" ]; then
		apm install --packages-file $DOTFILES_DIR/atom/packages.txt
	elif [ -x "$(command -v apm-beta)" ]; then		# Workaround for `apm` vs `apm-beta` binary
		apm-beta install --packages-file $DOTFILES_DIR/atom/packages.txt
	else
		echo "Atom not installed, skipping."
	fi
else
	echo "Atom packages already installed, skipping."
fi

echo "Installation complete..."
