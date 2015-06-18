#startup show date enabled
date
echo "# weiterlesen auf Seite 42"
echo "# sublimeuni jetzt nutzbar als shortcut"

# open university sublime project the short way
alias sublimeuni="open ~/Documents/university.sublime-project"


# enable interactive mode for mv, rm, cp (asks before overwriting)
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Vi mode
# bindkey -v

# set hashcat to app link
alias hashcat=/Applications/hashcat-0.49/Hashcat.app 

#important for autojump to work properly
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# important for lesspipe to work properly
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"




# Web function to open Websites
web(){
	if [ "$1" = "reddit" ]; then
		if [ "$2" = "headphones" ]; then
			open 'http://www.reddit.com/r/headphones/'
			return
		fi
		if [ "$2" = "headphones" ]; then
			open 'http://www.reddit.com/r/headphones/'
			return
		fi
		if [ "$2" = "lol" ]; then
			open 'http://www.reddit.com/r/leagueoflegends/'
			return
		fi
		if [ "$2" = "csgo" ]; then
			open 'http://www.reddit.com/r/globaloffensive/'
			return
		fi
		if [ "$2" = "mechanicalkeyboards" ]; then
			open 'http://www.reddit.com/r/mechanicalkeyboards/'
			return
		fi
		if [ "$2" = "mechs" ]; then
			open 'http://www.reddit.com/r/mechanicalkeyboards/'
			return
		fi
		if [ "$2" = "keyboard" ]; then
			open 'http://www.reddit.com/r/mechanicalkeyboards/'
			return
		fi
		if [ "$2" = "keyboards" ]; then
			open 'http://www.reddit.com/r/mechanicalkeyboards/'
			return
		fi
		if [ "$2" = "hearthstone" ]; then
			open 'http://www.reddit.com/r/hearthstone/'
			return
		fi
		if [ "$2" = "hs" ]; then
			open 'http://www.reddit.com/r/hearthstone/'
			return
		fi
		open 'http://www.reddit.com/r/Dashboard/'
		return
	fi

	if [ "$1" = "youtube" ]; then
		if [ "$1" = "watchlater" ]; then
			open 'https://www.youtube.com/playlist?list=WL'
			return
		fi
		if [ "$1" = "wl" ]; then
			open 'https://www.youtube.com/playlist?list=WL'
			return
		fi
		open 'https://www.youtube.com/?gl=DE&hl=de'
		return
	fi

	if [ "$1" = "infosys" ]; then
		if [ "$2" = "moodle" ]; then
			open 'https://islecture.cs.uni-saarland.de/course/view.php?id=10'
			return
		fi
		if [ "$2" = "forum" ]; then
			open 'http://isforum.infosys.uni-saarland.de/'
			return
		fi
		open 'https://infosys.uni-saarland.de/teaching/ss15/infosys.php#section_administrative'
		return
	fi

	if [ "$1" = "mfi2" ]; then
		if [ "$2" = "forum" ]; then
			open 'https://groups.google.com/forum/#!forum/mfi2-15-uds'
			return
		else
			open 'http://www.ml.uni-saarland.de/Lectures/MfI2-SS15/MfI2SS15.htm'
			return
		fi
	fi

	if [ "$1" = "ai" ]; then
		if [ "$2" = "moodle" ]; then
			open 'https://fai-lecture.cs.uni-saarland.de/course/view.php?id=8'
			return
		else
			open 'http://fai.cs.uni-saarland.de/teaching/summer-15/ai.html'
			return
		fi
	fi

	if [ "$1" = "hacking" ]; then
		open 'https://infsec.cs.uni-saarland.de/index.php%3Fp=874.html'
		return
	fi
	echo "invalid input after function call"
}



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
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib/node_modules/bin:/usr/local/lib:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/daniel/.rvm/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin"
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
