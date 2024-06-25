# General aliases

# listing
alias l='ls -halo'
#alias ltr='ls -lt'
#alias lth='l -t|head'
#alias lh='ls -Shl | less'

# paging
alias tf='tail -f -n 100'
alias less='less -R' # color codes in less

# searching
alias grep='grep --colour=always'

# editor
export EDITOR="nvim"
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# import other configs
source "$HOME/.dotfiles/config/zsh/git.sh"
source "$HOME/.dotfiles/config/zsh/ruby.sh"
source "$HOME/.dotfiles/config/zsh/tmux.sh"
