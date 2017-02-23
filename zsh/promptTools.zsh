# Contains Functions and Tools used to generate Prompts

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '❯' && return
    hg root >/dev/null 2>/dev/null && echo '❯' && return
    echo '❯'
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

# http://blog.joshdick.net/2012/12/30/my_git_prompt_for_zsh.html
# copied from https://gist.github.com/4415470
# Adapted from code found at <https://gist.github.com/1712320>.
 
#setopt promptsubst
autoload -U colors && colors # Enable colors in prompt

# Modify the colors and symbols in these variables as desired.
GIT_PROMPT_PREFIX=" %{$reset_color%}"
GIT_PROMPT_SUFFIX="%{$reset_color%}"
GIT_PROMPT_AHEAD="${PR_GREEN}+NUM%{$reset_color%}"
GIT_PROMPT_BEHIND="${PR_GREEN}-NUM%{$reset_color%}"
GIT_PROMPT_MERGING="${PR_BOLD_MAGENTA}⚡︎%{$reset_color%}"
GIT_PROMPT_UNTRACKED="${PR_RED}u%{$reset_color%}"
GIT_PROMPT_MODIFIED="${PR_YELLOW}m%{$reset_color%}"
GIT_PROMPT_STAGED="${PR_GREEN}s%{$reset_color%}"
 
# Show Git branch/tag, or name-rev if on detached head
function parse_git_branch() {
  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}
 
# Show different symbols as appropriate for various Git repository states
function parse_git_state() {
 
  # Compose this value via multiple conditional appends.
  local GIT_STATE=""
 
  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_AHEAD//NUM/$NUM_AHEAD}
  fi
 
  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_BEHIND//NUM/$NUM_BEHIND}
  fi
 
  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
  fi
 
  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED
  fi
 
  if ! git diff --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED
  fi
 
  if ! git diff --cached --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED
  fi
 
  if [[ -n $GIT_STATE ]]; then
    echo "$GIT_PROMPT_PREFIX$GIT_STATE$GIT_PROMPT_SUFFIX"
  fi
 
}
 

# If inside a Git repository, print its branch and state
function git_prompt_string() {
  local git_where="$(parse_git_branch)"
  [ -n "$git_where" ] && echo " %{$fg[green]%}[${git_where#(refs/heads/|tags/)}$(parse_git_state)%{$fg[green]%}]"
}

function current_pwd {
  echo $(pwd | sed -e "s,^$HOME,~,")
}

# Using $(get_pwd) instead of %~ will only show the full path when NOT in a Git repo, otherwise from git root
function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

