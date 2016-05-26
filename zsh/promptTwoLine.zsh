# Loading a Prompt in Two Line Format

PROMPT='
${PR_BOLD_MAGENTA}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} ${PR_YELLOW}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} ${PR_BOLD_GREEN}$(current_pwd)%{$reset_color%} ($(git_prompt_string)%{$reset_color%})
$(prompt_char) '

export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color [(y)es (n)o (a)bort (e)dit]? "

RPROMPT=''
