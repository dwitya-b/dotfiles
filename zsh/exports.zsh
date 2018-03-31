# General {{{
#
export EDITOR="vim"

# Default is 40 (0.4 seconds).
# We make it a little bit faster
export KEYTIMEOUT=10
#
# }}}

# Zplug {{{
#
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
#
# }}}

# RVM {{{
#
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#
# }}}

# Go {{{
#
GOROOT=/usr/local/bin
GOPATH=$HOME/Go

export PATH=$GOPATH/bin:$PATH
#
# }}}

# Erlang/Elixir {{{
#
export PATH=/usr/local/opt/erlang\@19/bin:$PATH
export PATH=/Users/andriepu/Library/Elixir/elixir/bin:$PATH
#
# }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
