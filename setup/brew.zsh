# some parts used from https://github.com/mathiasbynens/dotfiles

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# installs Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
echo "brew update"
brew update

# Upgrade any already-installed formulae.
echo "brew upgrade --all"
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
echo "brew install coreutils"
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum


echo "brew install all my old stuff"
brew install youtube-dl
brew install archey
brew install grep
brew install python3
brew install python
brew install gitignore
brew install htop-osx
brew install autojump
brew install ssh-copy-id
brew install tmux
brew install vim --with-python3
brew install macvim --override-system-vim --with-python3
brew install mpv
brew install grep
brew install autojump
brew install mplayer
brew install git
brew install rename
brew install speedtest_cli

# Install more recent versions of some OS X tools.
echo "Install more recent versions of some OS X tools."
brew install homebrew/dupes/openssh
