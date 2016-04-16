# https://github.com/blinks zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  else
    echo ' '
  fi
}

# This theme works with both the "dark" and "light" variants of the
# Solarized color schema.  Set the SOLARIZED_THEME variable to one of
# these two values to choose.  If you don't specify, we'll assume you're
# using the "dark" variant.

case ${SOLARIZED_THEME:-dark} in
    light) bkg=white;;
    *)     bkg=none;;
esac


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

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{bgk}%{%B%F{2}%}\ue0a0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%K{${bkg}}%B%F{bgk}%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}\u2718%{%f%k%b%}"
# ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_CLEAN=" %{%F{green}%}\u2713%{%f%k%b%}"

PROMPT='%{%f%k%b%}
%{%K{${bkg}}%B%F{magenta}%}%n%{%B%F{bkg}%}@%{%B%F{yellow}%}%m%{%B%F{green}%} %{%F{blue}%K{${bkg}}%}$(get_pwd)%{%B%F{green}%}%{%B%F{bkg}%} ❯%{%K{${bkg}}%}%{%f%k%b%} '

# $(parse_git_dirty) do only parse clean or dirty part inside prompt

RPROMPT='$(git_prompt_info)%E%{%f%k%b%}%{%K{${bkg}}%}'

# RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'
