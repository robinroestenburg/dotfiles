#!/usr/bin/env bash

# Catppuccin Frappe colors for Tmux

mauve="#ca9ee6"
base="#303446"
surface="#414564"
subtext="#a5adce"

set -g mode-style "fg=#292c3c,bg=#303446"

set -g message-style "fg=#292c3c,bg=#303446"
set -g message-command-style "fg=#292c3c,bg=#8caaee"

set -g pane-border-style "fg=$surface"
set -g pane-active-border-style "fg=$subtext"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=$mauve,bg=$base"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=$base,bg=$mauve,bold] #S #[fg=$mauve,bg=$base,nobold,nounderscore,noitalics]"

prefix_highlight="#{?client_prefix,#[fg=$mauve bg=$base]#[fg=$surface bg=$mauve nobold nounderscore noitalics] P #[fg=$base bg=$mauve nobold nounderscore noitalics]#[fg=$surface bg=$base],#[fg=$surface bg=$base nobold nounderscore noitalics]}"
date="%Y-%m-%d"
time="%I:%M %p"
machine="#[fg=$base,bg=$surface,nobold,nounderscore,noitalics]#[fg=$mauve,bg=$base,nobold,nounderscore,noitalics]#[fg=$base,bg=$mauve,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  time="%H:%M"
}
set -g status-right "$prefix_highlight#[fg=$subtext bg=$surface nobold nounderscore noitalics] $date  $time $machine"

setw -g window-status-activity-style "underscore,fg=$mauve,bg=$surface"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=$subtext,bg=$surface"
setw -g window-status-format "#[fg=$base,bg=$surface,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=$surface,bg=$base,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=$base,bg=$mauve,nobold,nounderscore,noitalics]#[fg=$base,bg=$mauve,bold] #I  #W #F #[fg=$mauve,bg=$base,nobold,nounderscore,noitalics]"
