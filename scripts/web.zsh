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

    if [ "$1" = "hci" ]; then
        if [ "$2" = "moodle" ]; then
            open "https://hyperion.cispa.saarland/folien/2016-WS/Recht-Cybersicherheit/"
            return
        fi
		open 'http://www.uni-saarland.de/lehrstuhl/sorge/lehre/winter-20162017/vorlesung-recht-der-cybersicherheit.html'
		return
	fi

    if [ "$1" = "ethic" ] || [ "$1" = "nerds" ]; then
        if [ "$2" = "material" ]; then
            open "https://hyperion.cispa.saarland/folien/2016-WS/Recht-Cybersicherheit"
            return
        fi
		open 'https://dcms.cs.uni-saarland.de/ethics_17/students/view'
		return
	fi
    if [ "$1" = "software" ] || [ "$1" = "engineering" ]; then
        if [ "$2" = "placeholder" ]; then
            open "placeholder"
            return
        fi
		open 'http://www.sps.cs.uni-saarland.de/teaching/16WS/pec/index.html'
		return
	fi

	echo "invalid input after function call"
}


