#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo "Creating symbolic links"

echo "Linking zsh"
ln -is $DOTFILES/zsh/zshrc $HOME/.zshrc

echo "Linking tmux"
ln -is $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf

echo "Linking vim"
ln -is $DOTFILES/vim/vimrc $HOME/.vimrc
ln -is $DOTFILES/vim/vim $HOME/.vim

