# enable vim mode
bindkey -v
export KEYTIMEOUT=1

function print_dcs
{
  print -n -- "\EP$1;\E$2\E\\"
}

function set_cursor_shape
{
  if [ -n "$TMUX" ]; then
    # tmux will only forward escape sequences to the terminal if surrounded by
    # a DCS sequence
    print_dcs tmux "\E]50;CursorShape=$1\C-G"
  else
    print -n -- "\E]50;CursorShape=$1\C-G"
  fi
}

function zle-keymap-select zle-line-init
{
  # set cursor depending on mode
  case $KEYMAP in
    vicmd)
      set_cursor_shape 0 # block cursor
      ;;
    viins|main)
      set_cursor_shape 1 # line cursor
      ;;
  esac
  
  # show mode on the right side of terminal
  RPS1="%{$fg[blue]%}${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}%{$reset_color%}"
  RPS2=$RPS1

  zle reset-prompt
  zle -R
}

function zle-line-finish
{
  set_cursor_shape 0 # block cursor
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

# vim:set ft=zsh:

bindkey -v



# load ci(
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
	for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
	    bindkey -M $m $c select-bracketed
	done
done

# load ci"
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
	    bindkey -M $m $c select-quoted
	done
done

# load surround functionality
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -a cs change-surround
bindkey -a ds delete-surround
bindkey -a ys add-surround
bindkey -M visual S add-surround
