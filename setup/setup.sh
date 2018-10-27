# create symbolic link to the 'airport' command:
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/sbin/airport

# start systemlinking
zsh ~/dotfiles/setup/dotfiles.sh

# start homebrew setup
zsh ~/dotfiles/setup/brew.sh

# install livestreamer tool https://github.com/chrippa/livestreamer
pip install livestreamer

# disable mouse acceleration
defaults write -g com.apple.mouse.scaling -1
