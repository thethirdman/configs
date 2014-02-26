#!/bin/bash

FILES=".vim .vimrc .zsh .zshrc .gitconfig .gitignore_global"

echo "Creating symbolic links to configuration files"
for f in $FILES; do
  ln -s `pwd`/$f ~/$f;
done

echo "Setup up vim folder"
mkdir ~/.vim/tmp
git submodule init
git submodule update
