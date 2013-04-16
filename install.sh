#!/bin/sh

DOTFILES_DIR=`pwd`

ln -s $DOTFILES_DIR/gitconfig ~/.gitconfig
ln -s $DOTFILES_DIR/zshrc ~/.zshrc
ln -s $DOTFILES_DIR/tmux.conf ~/.tmux.conf
ln -s $DOTFILES_DIR/vimrc ~/.vimrc
ln -s $DOTFILES_DIR/vim ~/.vim

