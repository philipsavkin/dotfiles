#!/bin/sh

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

cp $DOTFILES_DIR/.gitconfig ~/.gitconfig
#ln -s $DOTFILES_DIR/zshrc ~/.zshrc
ln -s $DOTFILES_DIR/.config/nvim ~/.config/nvim
