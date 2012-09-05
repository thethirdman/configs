# Zsh file extensions aliases

for $vim in .c .h .cc .hh .cpp .txt; do
  alias -s $vim=vim;
done;

for $img in jpg jpeg png gif tiff bmp; do
  alias -s $img=eog;
done;

alias -s ml  ='ocaml -init'
alias -s v   ='coqtop -l'
# no working sbcl right now
# alias -s lisp='sbcl --load'
alias -s tex ='pdflatex'
