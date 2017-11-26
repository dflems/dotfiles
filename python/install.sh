#!/bin/sh

BREW_PYTHON_LIBEXEC="$(brew --prefix)/opt/python/libexec/bin"
if [ ! -d "$BREW_PYTHON_LIBEXEC" ]; then
  echo "install python with homebrew first"
  exit 1
fi

"$BREW_PYTHON_LIBEXEC/pip" install virtualenv virtualenvwrapper
