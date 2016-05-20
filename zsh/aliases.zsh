# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'bk=cd $OLDPWD'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls --color=auto -d .*' # show hidden files/directories only
alias lsd='ls --color=auto -aFhlG'
alias l='ls --color=auto -al'
alias ls='ls --color=auto -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls --color=auto -GFhl' # Same as above, but in long listing format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size

alias 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias 'filecount=find . -type f | wc -l' # number of files (not directories)

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias ql='qlmanage -p 2>/dev/null' # OS X Quick Look
    alias oo='open .' # open current directory in OS X Finder
    alias 'smart=diskutil info disk0 | grep SMART' # display SMART status of hard drive
    # Hall of the Mountain King
    alias cello='say -v cellos "di di di di di di di di di di di di di di di di di di di di di di di di di di"'
    # alias to show all Mac App store apps
    alias apps='mdfind "kMDItemAppStoreHasReceipt=1"'
    # rebuild Launch Services to remove duplicate entries on Open With menu
    alias rebuildopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.fram ework/Support/lsregister -kill -r -domain local -domain system -domain user'
fi


# -------------------------------------------------------------------
# remote machines
# -------------------------------------------------------------------
alias 'server=ssh server'

# -------------------------------------------------------------------
# database
# -------------------------------------------------------------------
alias 'psqlstart=/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start'
alias 'psqlstop=/usr/local/pgsql/bin/pg_ctl stop'
#alias mysql='mysql -u root'
#alias mysqladmin='mysqladmin -u root'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -v'
alias gclean='git clean -fd'
alias gco='git checkout'
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gcount='git shortlog -sn'
alias gd='git diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gl='git pull'
alias glg='git log --stat'
alias glog='git log --oneline --decorate --graph'
alias gm='git merge'
alias gmom='git merge origin/master'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash'

alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gcl='git clone'
alias gta='git tag -a -m'

# curiosities 
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"


# -------------------------------------------------------------------
# Useful Parameters
# -------------------------------------------------------------------

# enable interactive mode for mv, rm, cp (asks before overwriting)
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# alias to cat this file to display
alias acat='< ~/dotfiles/zsh/aliases.zsh'
alias fcat='< ~/dotfiles/zsh/functions.zsh'
alias sz='source ~/.zshrc'

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# colortest_etc launch
alias colortest="zsh ~/dotfiles/scripts/colortests/colors_esc"
alias colortest_etc="zsh ~/dotfiles/scripts/colortests/colors_etc"


# -------------------------------------------------------------------
# Directory Links
# -------------------------------------------------------------------

# Shortcuts to University stuff
alias vision="~/dropbox/uni/HLC-vision"
alias computervision="~/dropbox/uni/HLC-vision"
alias highlevel="~/dropbox/uni/HLC-vision"
alias hlcv="~/dropbox/uni/HLC-vision"
alias security="~/dropbox/uni/security"
alias secrepo="~/drodbox/uni/security/repo"
alias sec="~/dropbox/uni/security"
alias hci="~/dropbox/uni/hci-dev"
alias hcidev="~/dropbox/uni/hci-dev"

# Shortcuts to directories or files
alias cl="cd; clear"
alias c="clear"
alias dotfiles="~/dotfiles"
alias cheatsheets="~/cheatsheets"
alias scripts="~/scripts"
alias dl="~/Downloads"
alias dt="~/Desktop"
alias db="~/Dropbox"
alias dropbox="~/Dropbox"
alias doc="~/Documents"
alias wallpaper="~/Dropbox/Wallpaper"
alias icons="~/icons"
alias euler="~/github/projecteuler"

# important Files to quickedit
alias zshrc="mvim ~/dotfiles/zsh/zshrc"
alias aliases="mvim ~/dotfiles/zsh/aliases.zsh"
alias functions="mvim ~/dotfiles/zsh/functions.zsh"
alias vimrc="vim ~/dotfiles/mvim/vimrc"
alias tmuxconf="mvim ~/dotfiles/tmux/tmux.conf"
alias gitignore="vim .gitignore"
alias gig="vim .gitignore"

alias reddit="rtv"

alias livecheck="python3 ~/dotfiles/scripts/livecheck.py"

