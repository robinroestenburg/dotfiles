# Ruby aliases
alias be='bundle exec'
alias rdb='be rake db:test:prepare'

alias rr='mkdir -p tmp && touch tmp/restart.txt'
alias c='bundle exec cucumber -r features'
alias wip='c --profile wip'
# alias specdoc='time rspec -fd'
# alias s='rspec --require ~/.dotfiles/script/rspec_focus --order default --color --tty'
alias irb='pry'
# alias guard='bundle exec guard'
