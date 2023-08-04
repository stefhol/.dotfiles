# Dotfiles
## Installing

You will need `git` and GNU `stow`

Clone into your `$HOME` directory or `~`
Install XCode
```bash
xcode-select --install
```

```bash
git clone git@github.com:stefhol/.dotfiles.git ~/.dotfiles --recurse-submodules
cd ~/.dotfiles
git submodule update --recursive --init
```

Run `stow` to symlink everything or just select what you want

```bash
stow */ # Everything (the '/' ignores the README)
```

```bash
stow zsh # Just my zsh config
```
## Managing
Create Brewfile
```bash
brew bundle dump --describe
```
