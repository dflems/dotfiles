#!/bin/sh

if test ! "$(uname)" = "Darwin"; then
  exit 0
fi

DIR="$(dirname "$0")"

echo "Copying iTerm2 Config..."
cp "$DIR/com.googlecode.iterm2.plist" "$HOME/Library/Preferences"

echo "Done!"
