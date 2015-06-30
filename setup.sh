# create symbolic link to the 'airport' command:
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/sbin/airport

# start systemlinking
zsh ~/dotfiles/makesymlinks.sh

# start homebrew setup
zsh ~/dotfiles/brew.sh

# install livestreamer tool https://github.com/chrippa/livestreamer
pip install livestreamer
