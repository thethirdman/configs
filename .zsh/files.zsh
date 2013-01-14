# Zsh file extensions aliases

for vim in c h cc hh cpp txt; do
  alias -s $vim=vim;
done;

for img in jpg jpeg png gif tiff bmp; do
  alias -s $img=eog;
done;

## does not seem to workd with options
# alias -s ml  ='/usr/bin/ocaml -init'
# alias -s v   ='coqtop -l'
# not working sbcl right now
# alias -s lisp='sbcl --load'
alias -s tex ='pdflatex'
