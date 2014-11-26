#!/bin/sh

# check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# latest 'n' greatest
brew update
brew upgrade

# install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install findutils
brew install gnu-sed --default-names
brew install moreutils

# install GRC for coloring
brew install grc

# install wget with IRI support
brew install wget --enable-iri

# install more recent versions of some OS X tools
brew install vim --override-system-vi

# install other useful binaries
brew install git
brew install ngrep
brew install node
brew install rename
brew install the_silver_searcher
brew install trash
brew install tree

# install homebrew cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# install casks
brew cask install airserver
brew cask install alfred
brew cask install appcleaner
brew cask install appium
brew cask install audacity
brew cask install caffeine
brew cask install cakebrew
brew cask install charles
brew cask install chromecast
brew cask install cloud
brew cask install dash
brew cask install dropbox
brew cask install rowanj-gitx
brew cask install google-chrome
brew cask install handbrake
brew cask install hex-fiend
brew cask install hopper-disassembler
brew cask install imagealpha
brew cask install imageoptim
brew cask install intellij-idea
brew cask install iterm2
brew cask install macvim
brew cask install node-webkit
brew cask install reflector
brew cask install sequel-pro
brew cask install skype
brew cask install sublime-text3
brew cask install the-unarchiver
brew cask install totalterminal
brew cask install tower
brew cask install trailer
brew cask install transmission
brew cask install uncrustifyx
brew cask install vlc
brew cask install wasted
brew cask install xscope
brew cask install wireshark

# add Caskroom to Alfred's scope
brew cask alfred link

# play cleanup
brew cleanup
