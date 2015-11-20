# Color codes in zsh (used mainly in prompt coloring)
export reset=$'%{\e[0;00m%}'
export gray=$'%{\e[0;90m%}'
export red=$'%{\e[0;31m%}'
export green=$'%{\e[0;32m%}'
export yellow=$'%{\e[0;33m%}'
export blue=$'%{\e[0;34m%}'
export magenta=$'%{\e[0;35m%}'
export cyan=$'%{\e[0;36m%}'
export white=$'%{\e[0;37m%}'


HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Set prompt
setopt prompt_subst
PROMPT='$(~/.dotfiles/script/prompt $?)'

export SHELL=$(which zsh)

export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export EDITOR="vim"


## CHRUBY

# Load chruby
source /usr/local/share/chruby/chruby.sh

# Automatically switch to other Ruby version when switching to a dir with .ruby-version file.
source /usr/local/share/chruby/auto.sh
