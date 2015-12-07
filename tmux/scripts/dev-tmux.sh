#!/bin/zsh 
tmux new-session -d 'vim'
tmux split-window -v 'ipython'
tmux split-window -h -p 50 -t 0 bar
tmux new-window 'mutt'
tmux -2 attach-session -d 
