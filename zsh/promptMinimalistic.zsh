# Loading a Prompt in one Line Format

PROMPT='
${PR_BOLD_MAGENTA}$(prompt_char)${PR_BOLD_GREEN}  '

zle_highlight=( default:bold,fg=green )

export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color [(y)es (n)o (a)bort (e)dit]? "

RPROMPT='${PR_WHITE}$(get_pwd)$(git_prompt_string)${PR_BOLD_GREEN}'
