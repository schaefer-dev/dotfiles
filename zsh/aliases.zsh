# python3 use
# alias python="python3"
# alias pip="pip3"

# C Compiler gcc, g++ etc
# alias gcc='gcc-4.8'
# alias cc='gcc-4.8'
# alias g++='g++-4.8'
# alias c++='c++-4.8'
alias stream="python ~/dotfiles/scripts/stream.py"
alias wakepc="wakeonlan -i 192.168.52.255 9c:6b:00:56:85:c9"
 
# quick conversion into BoSy web format
alias spec2web="python3 spec_to_web.py temp_after_automata_translation_transformed.bosy"

alias startYabai="brew services start yabai; killall Dock"
alias stopYabai="brew services stop yabai; killall Dock"
alias startSKHD="brew services start skhd"
alias stopSKHD="brew services stop skhd"

# dock tmux
alias dock="tmux attach -t MAIN;tmux new -s MAIN; clear;"

alias macminissl="zsh ~/dotfiles/scripts/macMiniSSL.zsh"
alias edgerouterSSL="zsh ~/dotfiles/scripts/edgeRouterSSL.zsh"

# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='..'
alias ...='../..'
alias ....='../../..'
alias 'bk=cd $OLDPWD'


# -------------------------------------------------------------------
# directory movement using pushd, popd
# -------------------------------------------------------------------
alias dirs='dirs -v'
function mypushd {
    pushd "${@}" >/dev/null;
    dirs -v;
}
function mypopd {
    popd "${@}" >/dev/null;
    dirs -v;
}
alias d='dirs -v'
alias p='mypushd'
alias o='mypopd'



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
alias ql='qlmanage -p 2>/dev/null' # OS X Quick Look
alias oo='open .' # open current directory in OS X Finder
alias 'smart=diskutil info disk0 | grep SMART' # display SMART status of hard drive
# Hall of the Mountain King
alias cello='say -v cellos "di di di di di di di di di di di di di di di di di di di di di di di di di di"'
# alias to show all Mac App store apps
alias apps='mdfind "kMDItemAppStoreHasReceipt=1"'
# rebuild Launch Services to remove duplicate entries on Open With menu
alias rebuildopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.fram ework/Support/lsregister -kill -r -domain local -domain system -domain user'

# -------------------------------------------------------------------
# database
# -------------------------------------------------------------------
alias 'psqlstart=/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start'
alias 'psqlstop=/usr/local/pgsql/bin/pg_ctl stop'
#alias mysql='mysql -u root'
#alias mysqladmin='mysqladmin -u root'
# -------------------------------------------------------------------


# launch apps with 'app'
alias app="open -a"
alias a="open -a"
alias Battle.net="Battle.net.app"
alias vlc="/applications/VLC.app/Contents/MacOS/VLC"
alias vimr="open -a VimR.app"

# archey is default colored
alias archey="archey -c"

# use caffeinate for x seconds
alias caffeinate="caffeinate -i -t"

# -------------------------------------------------------------------
# KWM Tiling Window manager config
# -------------------------------------------------------------------
alias kwmStop="brew services stop kwm"
alias kwmStart="brew services start homebrew/binary/kwm"
alias kwmRestart="brew services restart kwm"
alias kwmcMouseEnabled="kwmc config focus-follows-mouse autoraise"
alias MouseEnabled="kwmc config focus-follows-mouse autoraise"
alias MouseDisabled="kwmc config focus-follows-mouse off"
alias MouseDisabled="kwmc config focus-follows-mouse off"
# -------------------------------------------------------------------


# alias for gitinspector
alias gitinspector="python2 /Users/daniel/dev/gitinspector/gitinspector.py"

# alias for hidden files
alias hiddenon="defaults write com.apple.finder AppleShowAllFiles 1; killall Finder; open -a XtraFinder"
alias hiddenoff="defaults write com.apple.finder AppleShowAllFiles 0; killall Finder; open -a XtraFinder"

# open in mvim tab
alias mvim="open -a MacVim.app"
alias mvimt="mvim --remote-tab-silent"



# -------------------------------------------------------------------
# remote machines
# -------------------------------------------------------------------
alias 'server=ssh server'
alias ssh_pi="ssh daniel@192.168.52.50"

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
alias glog="git log --oneline --decorate"
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
alias gshow='git show'
alias gb='git branch'

alias gp='git push'

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

# sorts top list by cpu default
alias top="top -o cpu"

# added alias 'filetree' which lists the filesystem graphically
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'" 
#
# use htop with sudo (to show ram/cpu) and also sort for cpu usage
alias htop="htop --sort-key PERCENT_CPU"

# alias to cat this file to display
alias acat='< ~/dotfiles/zsh/aliases.zsh'
alias fcat='< ~/dotfiles/zsh/functions.zsh'
alias sz='source ~/.zshrc'

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# colortest_etc launch
alias colors="zsh ~/dotfiles/scripts/colortests/colors_esc"
alias colortest="zsh ~/dotfiles/scripts/colortests/colors_esc"
alias colortest_etc="zsh ~/dotfiles/scripts/colortests/colors_etc"


# -------------------------------------------------------------------
# Directory Links
# -------------------------------------------------------------------

# Shortcuts to directories or files
alias cl="cd; clear"
alias c="clear"

alias gig="vim .gitignore"

# -------------------------------------------------------------------
# Quick Functions for personal use
# -------------------------------------------------------------------

alias py="bpython"

alias reddit="rtv"

# speedtest
alias speedtest="zsh ~/dotfiles/scripts/speedtest.sh"

# git push to myserver + origin
alias gpall="zsh ~/dotfiles/scripts/gpall.sh"

# shortcut to restart notifyd process to avoid tmux bug/lag
alias bug="sudo kill $(ps aux | grep '[n]otifyd' | awk '{print $2}'); echo fixed my friend!"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# use htop with sudo (to show ram/cpu) and also sort for cpu usage
alias htop="sudo htop --sort-key PERCENT_CPU"

# alias to start twitchy
# alias twitchy="python3 ~/dotfiles/scripts/twitchy.py"

# aliases to switch between twoline and singleline Prompt
alias twoLine="source ~/dotfiles/zsh/promptTwoLine.zsh"
alias oneLine="source ~/dotfiles/zsh/promptOneLine.zsh"

# start sublime university project
alias thesis="subl ~/dotfiles/Sublime\ Text\ 3/projects_workspaces/thesis.sublime-project"

# proverif execution using pi calculus
alias pv="proverif -in pi"

# default vim to use neovim instead
alias vim="nvim"

# alias to ubuntu home
alias sshome="ssh daniel@schaeferdev.hopto.org"

# using fzf tmux default
alias fzf="fzf-tmux"

# OS VM aliases for ssh and emacs
alias emacsvm="emacs /ssh:pintos@192.168.56.101:/home/pintos/pintos/src &"
alias sshvm="ssh pintos@192.168.56.101"


# alias to fix mac mic when calling phoneline via continuity and iphone
alias micfix="sudo killall coreaudiod"
alias fixmic="sudo killall coreaudiod"
alias fixaudio="sudo killall coreaudiod"

alias tmuxa="tmux attach -t MAIN;tmux new -s MAIN; clear;"
