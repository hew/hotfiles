#!/usr/bin/env bash

# Note: I gutted the original pretty heavily, as I simply don't use most of the stuff
# But it can be found here: 
# https://github.com/donnemartin/dev-setup/blob/master/brew.sh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade --all


# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils


echo "Installing Fish, the best shell."
brew install fish
brew install fisher

echo "Adding fish to the list of allowed shells"
# Prompts for password
sudo bash -c 'echo /usr/local/bin/fish >> /etc/shells'
# Change to the new shell, prompts for password
chsh -s /usr/local/bin/fish

# Install Python
brew install pyenv

# Install Node
brew install node

echo "You'll probably want to run 'pyenv install 3.6.4"

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
# brew install homebrew/php/php55 --with-gmp

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install hub
brew install rename
brew install tree

# Install Heroku
brew install heroku-toolbelt
heroku update

# Applications
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox

# Install Docker, which requires virtualbox
brew install docker
brew install boot2docker

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar.
brew cleanup
