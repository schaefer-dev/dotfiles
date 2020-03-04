# function to open iina to view twitch in a new window using multithreading
stream(){
   osascript <<-EOF
   tell application "iTerm"
   create window with profile "ZSH_livestream"
   select first window
   launch session "Default Session"
       tell current session of first window
           write text "/applications/IINA.app/Contents/MacOS/IINA https://twitch.tv/'$1'; exit"
       end tell
   end tell
EOF
}
