#### Introduction

Usama Saddiq's dotfiles.

Feel free to clone, fork or change as you'd like.


### Setup Instructions

Please clone this repository into your `$HOME` directory. If you don't, the boostrap script will break!

Once you've cloned the respository, the please run the following and wait for the magic to happen.

```bash
# First establish a symlink
$ ln -fs ~/dotfiles/zshrc.symlink ~/.zshrc

$ cd ~/dotfiles
# Bootstrap any dependencies
$ zsh bootstrap.sh

# Load .zshrc
source ~/.zshrc

# Symlink VSCode keybindings
ln -fs ~/dotfiles/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
```
