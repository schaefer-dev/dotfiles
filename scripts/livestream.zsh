############################################################
######## Multitasking Versions (currently broken) ##########
############################################################

# function to open livestream from twitch in a new window using multithreading
# livestream(){
#    osascript <<-EOF
#    tell application "iTerm"
#    create window with profile "ZSH_livestream"
#    select first window
#    launch session "Default Session"
#        tell current session of first window
#            write text "livestreamer twitch.tv/'$1' source --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6; exit"
#        end tell
#    end tell
#EOF
#}

# livestream1080p60(){
#    osascript <<-EOF
#    tell application "iTerm"
#    create window with profile "ZSH_livestream"
#    select first window
#    launch session "Default Session"
#        tell current session of first window
#            write text "livestreamer twitch.tv/'$1' 1080p60 --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6; exit"
#        end tell
#    end tell
#EOF
#}


# function to download twitch vod using livestreamer
# livestreamdl takes stream link as first parameter
# Filename = streamname with replaced illegal characters
#livestreamdl(){
#    osascript <<-EOF
#    tell application "iTerm"
#    create window with profile "ZSH_livestream"
#    select first window
#    launch session "Default Session"
#        tell current session of first window
#            write text "cd ~/downloads; livestreamer -o $(echo "$1" | tr / _).mp4 --hls-segment-threads 4 twitch.tv/'$1' source"
#        end tell
#    end tell
#EOF
#}


############################################################
######## in Terminal  Version (working) ####################
############################################################

# function to open livestream from twitch in a new window using multithreading
livestream(){
            echo "$(livestreamer twitch.tv/"$1" source --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6)"
}

livestream720(){
            $ echo "$(livestreamer twitch.tv/"$1" 720p60 --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=jzkbprff40iqj646a697cyrvl0zt2m6)"
}

# function to download twitch vod using livestreamer
# livestreamdl takes stream link as first parameter
# Filename = streamname with replaced illegal characters
livestreamdl(){
            zsh "cd ~/downloads; livestreamer -o $(echo "$1" | tr / _).mp4 --hls-segment-threads 4 twitch.tv/'$1' source"
}
