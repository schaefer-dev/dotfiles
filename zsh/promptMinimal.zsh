# Loading a Prompt in Two Line Format

PROMPT='
%{$reset_color%}${PR_BOLD_GREEN}$(get_pwd)%{$reset_color%} $(prompt_char) '

export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color [(y)es (n)o (a)bort (e)dit]? "

RPROMPT='%{$reset_color%}$(git_prompt_string)%{$reset_color%}'
