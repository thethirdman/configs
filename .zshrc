#!/bin/zsh

export ZSH_DIR=${HOME}/.zsh

for r in ${ZSH_DIR}/*.zsh; do
  source $r
done

export ZSH_THEME=trapd00r
source $HOME/.zsh/$ZSH_THEME.theme

set -o emacs
