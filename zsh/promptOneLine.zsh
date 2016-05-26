# Loading a Prompt in one Line Format

PROMPT='
${PR_BOLD_MAGENTA}%n%{$reset_color%}%{$FG[239]%}@${PR_BOLD_YELLOW}$(box_name)%{$reset_color%}%{$FG[239]%} %{$reset_color%}${PR_BOLD_BLUE}$(get_pwd)%{$reset_color%} $(prompt_char) '

export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color [(y)es (n)o (a)bort (e)dit]? "

RPROMPT='$(git_prompt_string)%{$reset_color%}'
