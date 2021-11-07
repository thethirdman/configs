set -e PATH
set -x PATH /bin $PATH
set -x PATH /sbin $PATH
set -x PATH /usr/bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH
set -x PATH /usr/sbin $PATH
set -x PATH /home/$USER/tools/bin $PATH
set -x PATH /usr/lib/llvm-11/bin/ $PATH
set -x PATH /home/$USER/.local/bin $PATH


set -x GOPATH ~/Prog/city
set fish_greeting "Hello " (set_color green) (whoami) (set_color normal)

function cp
	command cp -v $argv
end

set -x TERM xterm-256color

set -x CAML_LD_LIBRARY_PATH "/home/ttm/.opam/4.05.0/lib/stublibs"
set -x MANPATH "/home/ttm/.opam/4.05.0/man:"
set -x OCAML_TOPLEVEL_PATH "/home/ttm/.opam/4.05.0/lib/toplevel"

set -x NVM_DIR ~/.nvm
function nvm
   bass source $NVM_DIR/nvm.sh --no-use ';' nvm $argv
end

nvm use default --silent
