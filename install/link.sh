#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo "Creating symbolic links"

echo "Linking zsh"
ln -is $DOTFILES/zsh/zshrc $HOME/.zshrc