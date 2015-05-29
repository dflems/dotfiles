#!/bin/sh

# check for Homebrew
if ! type brew >/dev/null 2>&1; then
  echo "Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# echo on
set -x

# latest 'n' greatest
brew update
brew upgrade --all

# install wget with IRI support
brew install wget --enable-iri

# install more recent versions of some OS X tools
brew install vim --override-system-vi

# ruby environment
brew install chruby
brew install ruby-install

# install other useful binaries
brew install chisel
brew install git
brew install gnupg
brew install go
brew install hub
brew install jq
brew install ngrep
brew install nmap
brew install node
brew install rename
brew install the_silver_searcher
brew install trash
brew install tree
brew install youtube-dl

# cleanup
brew cleanup
