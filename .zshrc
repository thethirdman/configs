#!/bin/zsh

export REPO="configs-git"
export ZSH_DIR=${HOME}/${REPO}/.zsh
export ZSH_THEME=trapd00r
for r in ${ZSH_DIR}/*.zsh; do
  if [[ $DEBUG > 0 ]]; then
    echo "zsh: sourcing $r"
  fi
  source $r
done

source $HOME/.zsh/$ZSH_THEME.theme

xset b off
# eval `keychain --dir $HOME/etc/keychain -q --eval id_dsa`
export TZ='Europe/Paris'
#
# XXX
fpath=(~/etc/zsh/compdef $fpath)
#compinit -i

#compdef _files mkdir
#compdef _gnu_generic ln
set -o emacs
