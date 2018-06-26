# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
function vimf() {
  local out file key
  out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    ${EDITOR:-vim} "$file"
  fi
}

function mvimf() {
  local out file key
  out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    open -a MacVim.app "$file"
  fi
}


function vimrf() {
  local out file key
  out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    open -a VimR.app "$file"
  fi
}


function openf() {
  local out file key
  out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    open "$file"
  fi
}

# fd - cd to selected directory
function cdf() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf-tmux +m) &&
  cd "$dir"
}

# Setup cdb function to cd into bookmarks
# ------------------
unalias cdb 2> /dev/null
function cdb() {
   local dest_dir=$(cdscuts_glob_echo | fzf-tmux )
   if [[ $dest_dir != '' ]]; then
      cd "$dest_dir"
   fi
}

# Setup openb function to cd into bookmarks
# ------------------
unalias openb 2> /dev/null
function openb() {
   local dest_dir=$(cdscuts_glob_echo | fzf-tmux )
   if [[ $dest_dir != '' ]]; then
      open $dest_dir
   fi
}

# Setup vimb function to edit bookmarks
# ------------------
unalias fob 2> /dev/null
function vimb() {
   local dest_file=$(cdscuts_glob_echo_files | fzf-tmux )
   if [[ $dest_file != '' ]]; then
      vim $dest_file
   fi
}
