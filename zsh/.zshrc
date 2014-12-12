# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export EMAIL="Francois Ripault <francois.ripault@epita.fr>"
export EDITOR=vim

export PATH="$( echo \
  $HOME/tools/bin:\
  /bin:\
  /usr/bin:\
  /usr/local/bin:\
  /usr/texbin:\
  /sbin:\
  /usr/sbin:\
  | perl -pe 's/\s+//g')"
export MANPATH=$MANPATH:/usr/local/man:/opt/local/share/man:$HOME/tools/share/man
export HISTFILE="$HOME/.zshistory"
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd*"
export HISTSIZE=5000
export SAVEHIST=1000000

alias vim='vim -p'
alias g++='g++ -Wall -Werror -Wextra -pedantic'
alias      cp='cp -v'
alias      mv='mv -v'
alias      rm='rm -v'
alias    grep='grep -ni --color=auto'
alias   :q='exit'
alias   ..='cd ..'
alias sizeof='du -ch . | tail -n 1'
alias sbcl='rlwrap sbcl'
alias latexmk='latexmk -pdf'
alias ocaml='rlwrap ocaml'
alias coqtop='rlwrap coqtop'
