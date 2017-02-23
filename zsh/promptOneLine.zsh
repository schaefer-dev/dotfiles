# Loading a Prompt in one Line Format

PROMPT='
%{$reset_color%}${PR_RED}$(get_pwd) $(prompt_char) %{$reset_color%}'

export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color [(y)es (n)o (a)bort (e)dit]? "

RPROMPT='$(git_prompt_string)%{$reset_color%}'
