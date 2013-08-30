export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"

export EDITOR="vim"

## ALIASES
alias vi="/usr/local/bin/vim"

## CHRUBY

# Load chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh

# Automatically switch to other Ruby version when switching to a dir with .ruby-version file.
source /usr/local/opt/chruby/share/chruby/auto.sh
