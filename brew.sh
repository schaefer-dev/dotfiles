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
brew install postgresql
brew install youtube-dl
brew install archey
brew install grep
brew install python3
brew install python
brew install gitignore
brew install htop-osx
brew install mysql
brew install autojump

# Install more recent versions of some OS X tools.
echo "Install more recent versions of some OS X tools."
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
echo "Install some CTF tools; see https://github.com/ctfs/write-ups."
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz


# Install other useful binaries.
echo"Install other useful binaries."
brew install ack
brew install dark-mode

#brew install exiv2
echo "brew install exiv2"
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup