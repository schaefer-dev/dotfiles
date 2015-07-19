#startup show date enabled
date
echo "# weiterlesen auf Seite 42"
echo "# sublimeuni jetzt nutzbar als shortcut"

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

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# vlc control
alias vlc="/applications/VLC.app/Contents/MacOS/VLC"

# open university sublime project the short way
alias sublimeuni="open ~/.university.sublime-project"
alias stuni="open ~/.university.sublime-project"
alias stu="open ~/.university.sublime-project"

# use htop with sudo (to show ram/cpu) and also sort for cpu usage
alias htop="sudo htop --sort-key PERCENT_CPU"

# enable interactive mode for mv, rm, cp (asks before overwriting)
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# launch apps with 'app'
alias app="open -a"

# open folder with 'o'
alias o="open ."

# sorts top list by cpu default
alias top="top -o cpu"

# added alias 'filetree' which lists the filesystem graphically
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'" 


# alias for hidden files
alias hiddenon="defaults write com.apple.finder AppleShowAllFiles 1; killall Finder; open -a XtraFinder"
alias hiddenoff="defaults write com.apple.finder AppleShowAllFiles 0; killall Finder; open -a XtraFinder"

# enable vi mode
# source .zsh_vimode

# setting java_home
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# set hashcat to app link
alias hashcat=/Applications/hashcat-0.49/Hashcat.app 

#important for autojump to work properly
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# important for lesspipe to work properly
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"

# import my functions
source ~/.functions

# Shortcuts
alias hacking="~/hackingrepo"
alias mfi2="~/mfi2link"
alias infosys="~/infosysrepo"
alias np="~/nplink"
alias projectnp="~/project_np"
alias project="~/project_np"
alias npproject="~/project_np"
alias ai="~/ailink"
alias dotfiles="~/dotfiles"
alias scripts="~/scripts"
alias dl="~/Downloads"
alias dt="~/Desktop"
alias db="~/Dropbox"
alias doc="~/Documents"
alias wallpaper="~/Dropbox/Wallpaper"
alias icons="~/icons"


############################### MY STUFF ENDS HERE ######################################

# Path to your oh-my-zsh installation.
export ZSH=/Users/daniel/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git terminalapp brew textmate web-search sublime osx battery)

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib/node_modules/bin:/usr/local/lib:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/daniel/.rvm/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:$(brew --prefix coreutils)/libexec/gnubin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
	# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
