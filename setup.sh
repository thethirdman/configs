#!/bin/bash

FILES=".vim .vimrc .zsh .zshrc .gitconfig .gitignore_global"

for f in $FILES; do
  ln -s `pwd`/$f ~/$f;
done

mkdir ~/.vim/tmp
