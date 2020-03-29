# start homebrew setup
zsh ~/dotfiles/setup/brew.zsh

# start systemlinking
zsh ~/dotfiles/setup/dotfiles.zsh

# install livestreamer tool https://github.com/chrippa/livestreamer
pip install livestreamer

# disable mouse acceleration
defaults write -g com.apple.mouse.scaling -1

# disable smooth scrolling
# defaults write -g NSScrollAnimationEnabled -bool false

# disable animation for opening and closing windows and popovers
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO

# fast dialog boxes appearing (default is .2)
defaults write NSGlobalDomain NSWindowResizeTime .05
