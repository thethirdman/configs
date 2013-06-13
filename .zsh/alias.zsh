# zsh alias file

alias vim='vim -p'


alias g++='g++ -Wall -Werror -Wextra -pedantic'

alias      cp='cp -v'
alias      mv='mv -v'
alias      rm='rm -v'
alias    grep='grep -nPi --color=auto'
alias prename='prename -v'

alias   :q='exit'
alias   :q!='kill -9 $$'
alias  die='kill -9 $$'
alias tree='tree -dA'
alias  mem='su -c mem'
alias   ..='cd ..'

alias     cpuu='ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10'
alias memusage='ps -e -orss=,args= | sort -b -k1,1n|pr -TW$COLUMNS'

alias sbcl='rlwrap sbcl'
alias sizeof='du -ch . | tail -n 1'

alias latexmk='latexmk -pdf'
alias ocaml='rlwrap ocaml'
alias coqtop='rlwrap coqtop'

alias firefox=chromium-browser

alias ls='ls --color=always'
