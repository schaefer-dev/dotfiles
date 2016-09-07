# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
function fo() {
  local out file key
  out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
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

# Setup fob function to edit bookmarks
# ------------------
unalias fob 2> /dev/null
function fob() {
   local dest_file=$(cdscuts_glob_echo_files | fzf-tmux )
   if [[ $dest_file != '' ]]; then
      vim "$dest_file"
   fi
}
