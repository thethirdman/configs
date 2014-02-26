#!/usr/bin/zsh

# FIXME: should find a clean way to handle such stuff on different platforms
# export BROWSER="/usr/bin/firefox"

export EMAIL="Francois Ripault <francois.ripault@epita.fr>"

export EDITOR=vim

export LISTMAX=300
export PAGER="less"

#}}}
# PATH                                                                       {{{
export PATH="$( echo \
  $HOME/tools/bin:\
  /bin:\
  /usr/bin:\
  /usr/local/bin:\
  /usr/texbin:\
  /sbin:\
  /usr/sbin:\
  | perl -pe 's/\s+//g'
)"

export MANPATH=$MANPATH:/usr/local/man:/opt/local/share/man:$HOME/tools/share/man
#}}}
# zsh                                                                        {{{
#export ZSH_ACTIVE_COMPLETIONS="$( echo ${(kv)_comps[@]} )"

#export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
#}}}
# history                                                                    {{{
export HISTFILE="$HOME/.zshistory"
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd*"
export HISTSIZE=5000
export SAVEHIST=1000000

# is this actually useful ?
#part python variable for user's installed python libraries
# export PYTHONPATH=~/usr/lib/python2.4/site-packages:${PYTHONPATH}
