# zsh alias file

alias vim='vim -p'
alias g++='g++ -Wall -Werror -Wextra -pedantic'

alias      cp='cp -v'
alias      mv='mv -v'
alias      rm='rm -v'

alias    grep='grep -ni --color=auto'

alias   :q='exit'

alias   ..='cd ..'

alias sizeof='du -ch . | tail -n 1'

# Program aliases
# FIXME: They should be disabled if the bin is not found

alias sbcl='rlwrap sbcl'
alias latexmk='latexmk -pdf'
alias ocaml='rlwrap ocaml'
alias coqtop='rlwrap coqtop'

# ls stuff
export CLICOLOR=1
if [ `uname -s` = "Darwin" ]; then
  alias ls ='ls -G'
else
  alias ls='ls --color=auto'
fi
