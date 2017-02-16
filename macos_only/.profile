# Macports
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Metasploit
export PATH="$PATH:/opt/metasploit-framework/bin"

# RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Set Erlang paths for Emacs through environment variables so the same
# init.el can be used on multiple platforms where the path is different
export EMACS_ERLANG_TOOLS="/opt/local/lib/erlang/lib/tools-2.8.6/emacs"
export EMACS_ERLANG_ROOT="/opt/local/lib/erlang"

alias em=emacs
