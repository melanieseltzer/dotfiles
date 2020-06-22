# Melanie Seltzer's dotfiles

In roughly this order:

Install Xcode from the app store.

Install [nvm](https://github.com/nvm-sh/nvm):

```bash
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh):

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install [Pure prompt](https://github.com/sindresorhus/pure):

```bash
$ npm install --global pure-prompt
```

Verify git is installed (should come pre-installed) with `git --version`.

Clone this repo and navigate to the dotfiles folder:

```bash
$ git clone git@github.com:melanieseltzer/dotfiles.git && cd dotfiles
```

Make the following changes:

- duplicate `.example.env` as `.env` and add any env vars
- configure email in `.gitconfig`
- pick and choose what to install in `brew.sh`

Once done, run to symlink:

```bash
$ ./install.sh
```

Then run the brew script to install packages and casks:

```bash
$ ./brew.sh
```

If you get a permission denied error, run the following in the dotfiles directory:

```bash
$ chmod +x brew.sh
```