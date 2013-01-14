# zsh alias file

alias vim='vim -p'

alias     gcc='gcc -ansi -pedantic -Wextra -Wempty-body -Wfloat-equal -Wignored-qualifiers -Wmissing-declarations -Wmissing-parameter-type -Wmissing-prototypes -Wold-style-declaration -Woverride-init -Wsign-compare -Wstrict-prototypes -Wtype-limits -Wuninitialized -fstack-protector-all -D_FORTIFY_SOURCE=2'
alias    gccc='gcc -ansi -pedantic -Wall'
alias csyntax='gcc -fsyntax-only'

alias g++='g++ -Wall -Werror -Wextra -pedantic'
alias     gs='git status --short -b'
alias     gc='git commit'
alias     gp='git push'
alias    gdd='git diff'
alias     gc='git commit'
alias gitm='vim `git status -s | grep " M " | sed "s/ M //" | tr "\n" " "`'

alias      cp='cp -v'
alias      mv='mv -v'
alias      rm='rm -v'
alias    grep='grep -nPi --color=auto'
alias prename='prename -v'

#alias ls='${ZSH_DIR}/ls--/ls++ --pf'
ls='ls'

alias   :q='exit'
alias   :q!='kill -9 $$'
alias  die='kill -9 $$'
alias tree='tree -dA'
alias  mem='su -c mem'
alias   ..='cd ..'

# alias     gitstats='git ls-files -z | xargs -0n1 git blame -w | ruby -n -e '$_ =~ /^.*\((.*?)\s[\d]{4}/; puts $1.strip' | sort -f | uniq -c | sort -n'

alias     cpuu='ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10'
alias memusage='ps -e -orss=,args= | sort -b -k1,1n|pr -TW$COLUMNS'

alias sbcl='rlwrap sbcl'
alias sizeof='du -ch . | tail -n 1'
alias latexmk='latexmk -pdf'
alias ocaml='rlwrap ocaml'
alias coqtop='rlwrap coqtop'
