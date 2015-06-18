#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced

#ignores upper and lower case for completion in terminal (only has to be set once!!)
#echo "set completion-ignore-case On" >> ~/.inputrc


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export CLICOLOR=1
export TERM=xterm-256color

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export JAVA_HOME=$(/usr/libexec/java_home)
#export PATH='/usr/local/sbin:$PATH'
alias mtr=/usr/local/sbin/mtrexport PATH=/usr/local/sbin:$PATH
#echo export PATH='/usr/local/bin:$PATH'
export PATH="/usr/local/lib:$PATH"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib/node_modules/bin:$PATH"
