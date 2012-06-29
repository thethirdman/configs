#!/usr/bin/zsh

if [ $HOST = 'rambo' ]; then
  export DISPLAY=:0.0
fi

export BROWSER="/usr/bin/firefox"
export EMAIL="Francois Ripault <francois.ripault@epita.fr>"
export EDITOR=vim
export GIST_DIR=$HOME/dev/_gists/
export LISTMAX=300
export PAGER="most"

#}}}
# PATH                                                                       {{{
export PATH="$( echo \
  $HOME/Tools/bin:\
  $HOME/etc/bin:\
  $HOME/dev/utils:\
  $HOME/bin:\
  /bin:\
  /usr/bin:\
  /usr/local/bin:\
  /usr/bin/site_perl:\
  /usr/bin/core_perl:\
  /usr/bin/vendor_perl:\
  /usr/lib/perl5/site_perl/bin:\
  /usr/lib/perl5/vendor_perl/bin:\
  /usr/lib/perl5/core_perl/bin:\
  /sbin:\
  /usr/sbin:\
  /usr/bin/perlbin/site:\
  /usr/bin/perlbin/vendor:\
  /usr/bin/perlbin/core:\
  /home/scp1/perl5/perlbrew/perls/perl-5.8.3/:\
  $HOME/go/bin:\
  $HOME/usr/bin:\
  $HOME/sbcl/bin:\
  $HOME/acl:\
  $HOME/Tools/usr/local/bin:\
  | perl -pe 's/\s+//g'
)"
export MANPATH=$MANPATH:/usr/local/man:/opt/local/share/man:$HOME/Tools/share/man
#}}}
# zsh                                                                        {{{
export ZSH_ACTIVE_COMPLETIONS="$( echo ${(kv)_comps[@]} )"
export ZSH_THEME="trapd00r"
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
#}}}
# history                                                                    {{{
export HISTFILE="$HOME/.zshistory"
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd*"
export HISTSIZE=5000
export SAVEHIST=1000000

#SBCL EXPORTS
export SBCL_HOME=~/sbcl/lib/sbcl


#part python variable for user's installed python libraries
export PYTHONPATH=~/usr/lib/python2.4/site-packages:${PYTHONPATH}
