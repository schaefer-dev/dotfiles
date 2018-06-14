# Loading a prompt with minimalistic design

PROMPT='
%{$reset_color%}${PR_BOLD_MAGENTA}$(prompt_char)    %{$reset_color%}   '

export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color [(y)es (n)o (a)bort (e)dit]? "

RPROMPT='%{$reset_color%}${PR_BOLD_MAGENTA}$(get_pwd)%{$reset_color%} $fg[white]$(git_prompt_string)${PR_BOLD_GREEN}'
