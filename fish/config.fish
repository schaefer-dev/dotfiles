# Fish git prompt
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3


# set some useful variables
setenv EDITOR vim
setenv NAME "Daniel Schaefer"
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8


# Pretty ls colors
if test -e ~/.dir_colors
	setenv LS_COLORS (sh --noprofile -c 'eval "$(dircolors -b ~/.dir_colors)"; echo $LS_COLORS')
end

# important exports
set PATH $PATH ~/dotfiles/bin
set PATH $PATH ~/bin
set PATH $PATH /usr/local/bin
set PATH $PATH /usr/local/sbin
set PATH $PATH /usr/local/opt/coreutils/libexec/gnubin
set PATH $PATH /usr/local/opt/coreutils/libexec/gnuman


set JAVA_HOME $JAVA_HOME (/usr/libexec/java_home -v 1.8)
set LC_ALL $LC_ALL en_US.UTF-8
set LANG $LANG en_US.UTF-8

# Allow 256 colors in iTerm2 for pretty vim colors
set -gx CLICOLOR 1
set -gx TERM xterm-256color

# aliases ETC -------------------------------------------------
# -------------------------------------------------------------

# python3 use
# alias python="python3"
# alias pip="pip3"

# dock tmux
alias dock="tmux attach -t MAIN;tmux new -s MAIN; clear;"

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

# use htop with sudo (to show ram/cpu) and also sort for cpu usage
alias htop="sudo htop --sort-key PERCENT_CPU"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# colortest_etc launch
alias colors="fish ~/dotfiles/scripts/colortests/colors_esc"
alias colortest="fish ~/dotfiles/scripts/colortests/colors_esc"
alias colortest_etc="fish ~/dotfiles/scripts/colortests/colors_etc"


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
alias speedtest="fish ~/dotfiles/scripts/speedtest.sh"

# git push to myserver + origin
alias gpall="fish ~/dotfiles/scripts/gpall.sh"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

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

# start sublime university project
alias uni="subl ~/dotfiles/Sublime\ Text\ 3/projects_workspaces/university.sublime-project"

# proverif execution using pi calculus
alias pv="proverif -in pi"

# default vim to use neovim instead
# alias vim="nvim"

# alias to ubuntu home
alias sshome="ssh daniel@schaeferdev.hopto.org"

# using fzf tmux default
alias fzf="fzf-tmux"

# OS VM aliases for ssh and emacs
alias emacsvm="emacs /ssh:pintos@192.168.56.101:/home/pintos/pintos/src &"
alias sshvm="ssh pintos@192.168.56.101"

#use dircolors template
# eval (gdircolors ~/.dircolors/dircolors.256dark)
alias ls='gls --color=auto'

# set LS_COLORS
set -x LS_COLORS "rs=0:di=100;32;01:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*.zsh=01;31;01:"
