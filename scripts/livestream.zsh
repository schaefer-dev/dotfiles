############################################################
######## Multitasking Versions (currently broken) ##########
############################################################

# function to open livestream from twitch in a new window using multithreading
stream(){
   osascript <<-EOF
   tell application "iTerm"
   create window with profile "ZSH_livestream"
   select first window
   launch session "Default Session"
       tell current session of first window
           write text "streamlink twitch.tv/'$1' best --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6"
       end tell
   end tell
EOF
}

############################################################
######## in Terminal  Version (working) ####################
############################################################

# function to open livestream from twitch in a new window using multithreading
termstream(){
            echo "$(streamlink twitch.tv/"$1" best --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6)"
}

termstream720(){
            $ echo "$(streamlink twitch.tv/"$1" 720p60 --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6)"
}

# function to download twitch vod using livestreamer
# livestreamdl takes stream link as first parameter
# Filename = streamname with replaced illegal characters
termstreamdl(){
            zsh "cd ~/downloads; streamlink -o $(echo "$1" | tr / _).mp4 --hls-segment-threads 4 twitch.tv/'$1' source"
}
