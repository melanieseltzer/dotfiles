# Install Atom Packages

You can use the `apm star --installed` command to easily star all the packages you currently have installed.

Then, install all of your starred packages at any time by executing the command `apm stars --install` at the command line.

To create a list of current packages, use the following command in your dotfiles dir:

`apm list --bare --installed --dev false > atom/packages.txt`
