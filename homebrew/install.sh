#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

run_brew() {
  if [ -f /opt/homebrew/bin/brew ]; then
    [[ "$1" == "CHECK" ]] && return 0
    /opt/homebrew/bin/brew "$@"
  elif [ -f /usr/local/bin/brew ]; then
    [[ "$1" == "CHECK" ]] && return 0
    /usr/local/bin/brew "$@"
  else
    return 1
  fi
}

# Check for Homebrew
if run_brew CHECK; then
  echo "Homebrew is already installed."
else
  echo "Installing Homebrew."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi
fi

cd "$(dirname "$0")/.."

run_brew bundle install --no-lock
run_brew upgrade
run_brew cleanup

exit 0
