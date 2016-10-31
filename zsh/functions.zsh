# -------------------------------------------------------------------
# compressed file expander 
# (from https://github.com/myfreeweb/zshuery/blob/master/zshuery.sh)
# -------------------------------------------------------------------
ex() {
    if [[ -f $1 ]]; then
        case $1 in
          *.tar.bz2) tar xvjf $1;;
          *.tar.gz) tar xvzf $1;;
          *.tar.xz) tar xvJf $1;;
          *.tar.lzma) tar --lzma xvf $1;;
          *.bz2) bunzip $1;;
          *.rar) unrar $1;;
          *.gz) gunzip $1;;
          *.tar) tar xvf $1;;
          *.tbz2) tar xvjf $1;;
          *.tgz) tar xvzf $1;;
          *.zip) unzip $1;;
          *.Z) uncompress $1;;
          *.7z) 7z x $1;;
          *.dmg) hdiutul mount $1;; # mount OS X disk images
          *) echo "'$1' cannot be extracted via >ex<";;
    esac
    else
        echo "'$1' is not a valid file"
    fi
}


countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}
stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}

# -------------------------------------------------------------------
# any function from http://onethingwell.org/post/14669173541/any
# search for running processes
# -------------------------------------------------------------------
any() {
    emulate -L zsh
    unsetopt KSH_ARRAYS
    if [[ -z "$1" ]] ; then
        echo "any - grep for process(es) by keyword" >&2
        echo "Usage: any " >&2 ; return 1
    else
        ps xauwww | grep -i --color=auto "[${1[1]}]${1[2,-1]}"
    fi
}

# -------------------------------------------------------------------
# Mac specific functions
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then

    # view man pages in Preview
    pman() { ps=`mktemp -t manpageXXXX`.ps ; man -t $@ > "$ps" ; open "$ps" ; }

    # notify function - http://hints.macworld.com/article.php?story=20120831112030251
    notify() { automator -D title=$1 -D subtitle=$2 -D message=$3 ~/Library/Workflows/DisplayNotification.wflow }
fi

# -------------------------------------------------------------------
# nice mount (http://catonmat.net/blog/another-ten-one-liners-from-commandlingfu-explained)
# displays mounted drive information in a nicely formatted manner
# -------------------------------------------------------------------
function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }

# -------------------------------------------------------------------
# myIP address
# -------------------------------------------------------------------
function myip() {
  ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
  ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

# -------------------------------------------------------------------
# (s)ave or (i)nsert a directory.
# -------------------------------------------------------------------
s() { pwd > ~/.save_dir ; }
i() { cd "$(cat ~/.save_dir)" ; }

# function to start terminal chess
chess(){
	cd /Applications/Chess.app/Contents/Resources/
	sudo ./sjeng.ChessEngine
}

dash(){
    open "dash://$1"
}

# function to open Stuff in a new iTerm Window
popout_helper(){
    osascript <<-EOF
    tell application "iTerm"
    create window with profile "ZSH_noTmux"
    select first window
    launch session "Default Session"
        tell current session of first window
            write text "cd $1; ${@:2}"
        end tell
    end tell
EOF
}

popout(){
  popout_helper $(pwd) $@
}

# function to open livestream from twitch in a new window using multithreading
livestream(){
    osascript <<-EOF
    tell application "iTerm"
    create window with profile "ZSH_livestream"
    select first window
    launch session "Default Session"
        tell current session of first window
            write text "livestreamer twitch.tv/'$1' source --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6; exit"
        end tell
    end tell
EOF
}
livestream1080p60(){
    osascript <<-EOF
    tell application "iTerm"
    create window with profile "ZSH_livestream"
    select first window
    launch session "Default Session"
        tell current session of first window
            write text "livestreamer twitch.tv/'$1' 1080p60 --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6; exit"
        end tell
    end tell
EOF
}


# function to download twitch vod using livestreamer
# livestreamdl takes stream link as first parameter
# Filename = streamname with replaced illegal characters
livestreamdl(){
    osascript <<-EOF
    tell application "iTerm"
    create window with profile "ZSH_livestream"
    select first window
    launch session "Default Session"
        tell current session of first window
            write text "cd ~/downloads; livestreamer -o $(echo "$1" | tr / _).mp4 --hls-segment-threads 4 twitch.tv/'$1' source"
        end tell
    end tell
EOF
}

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

	if [ "$1" = "youtube" ] || [ "$1" = "yt" ]; then
		if [ "$2" = "watchlater" ]; then
			open 'https://www.youtube.com/playlist?list=WL'
			return
		fi
		if [ "$2" = "wl" ]; then
			open 'https://www.youtube.com/playlist?list=WL'
			return
		fi
		open 'https://www.youtube.com/?gl=DE&hl=de'
		return
	fi


	if [ "$1" = "hlcv" ] || [ "$1" = "highlevel" ]; then
        open 'http://www.mpi-inf.mpg.de/departments/computer-vision-and-multimodal-computing/teaching/courses/high-level-computer-vision/'
	fi

	if [ "$1" = "hci" ] || [ "$1" = "hcidev" ]; then
        open 'http://umtl.cs.uni-saarland.de/index.php?id=288'
	fi

	if [ "$1" = "sec" ] || [ "$1" = "security" ]; then
        if [ "$2" = "piazza" ]; then
            open "https://piazza.com/class/in00qm5p95r5oh"
            return
        fi
        if [ "$2" = "material" ]; then
            open "https://piazza.com/uni-saarland.de/spring2016/cs81908/resources"
            return
        fi
        if [ "$2" = "resources" ]; then
            open "https://piazza.com/uni-saarland.de/spring2016/cs81908/resources"
            return
        fi
        if [ "$2" = "ladmin" ]; then
            open "https://www.sps.cs.uni-saarland.de/teaching/16SS/security/ladmin/index.php"
            return
        fi  
		open 'https://www.sps.cs.uni-saarland.de/teaching/16SS/security/index.html'
		return
	fi

    if [ "$1" = "netflix" ]; then
		open 'http://www.netflix.com'
		return
	fi

	if [ "$1" = "cal" ] || [ "$1" = "calendar" ]; then
		open 'https://calendar.google.com/calendar/b/0/render#main_7'
		return
	fi

	if [ "$1" = "gh" ] || [ "$1" = "github" ]; then
		open 'https://github.com/schaefer-dev'
		return
	fi

    if [ "$1" = "twitch" ]; then
		open 'http://www.twitch.tv'
		return
	fi
    if [ "$1" = "recht" ] || [ "$1" = "jura" ]; then
        if [ "$2" = "material" ]; then
            open "https://hyperion.cispa.saarland/folien/2016-WS/Recht-Cybersicherheit/"
            return
        fi
		open 'http://www.uni-saarland.de/lehrstuhl/sorge/lehre/winter-20162017/vorlesung-recht-der-cybersicherheit.html'
		return
	fi
    if [ "$1" = "pec" ] || [ "$1" = "pet" ]; then
        if [ "$2" = "piazza" ]; then
            open "https://piazza.com/uni-saarland.de/winter2017/cs17/home"
            return
        fi
		open 'http://www.sps.cs.uni-saarland.de/teaching/16WS/pec/index.html'
		return
	fi

	echo "invalid input after function call"
}


# web_search from terminal
alias bing='web_search bing'
alias google='web_search google'
alias yahoo='web_search yahoo'
alias ddg='web_search duckduckgo'
alias yandex='web_search yandex'
alias github='web_search github'
alias baidu='web_search baidu'
alias ecosia='web_search ecosia'
#add your own !bang searches here
alias wiki='web_search duckduckgo \!w'
alias news='web_search duckduckgo \!n'
alias youtube='web_search duckduckgo \!yt'
alias map='web_search duckduckgo \!m'
alias image='web_search duckduckgo \!i'
alias ducky='web_search duckduckgo \!'

function web_search() {
  emulate -L zsh

  # define search engine URLS
  typeset -A urls
  urls=(
    google      "https://www.google.com/search?q="
    bing        "https://www.bing.com/search?q="
    yahoo       "https://search.yahoo.com/search?p="
    duckduckgo  "https://www.duckduckgo.com/?q="
    yandex      "https://yandex.ru/yandsearch?text="
    github      "https://github.com/search?q="
    baidu       "https://www.baidu.com/s?wd="
    ecosia      "https://www.ecosia.org/search?q="
  )

  # check whether the search engine is supported
  if [[ -z "$urls[$1]" ]]; then
    echo "Search engine $1 not supported."
    return 1
  fi

  # search or go to main page depending on number of arguments passed
  if [[ $# -gt 1 ]]; then
    # build search url:
    # join arguments passed with '+', then append to search engine URL
    url="${urls[$1]}${(j:+:)@[2,-1]}"
  else
    # build main page url:
    # split by '/', then rejoin protocol (1) and domain (2) parts with '//'
    url="${(j://:)${(s:/:)urls[$1]}[1,2]}"
  fi

  open "$url"
}

