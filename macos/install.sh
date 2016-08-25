#!/bin/sh

DIR="$(dirname "$0")"
chsh -s /bin/zsh

echo "Copying iTerm2 Config..."
cp "$DIR/com.googlecode.iterm2.plist" "$HOME/Library/Preferences"

echo "Copying Terminal Config..."
TERM_CFG="$HOME/Library/Preferences/com.apple.Terminal.plist"
THEME="$DIR/my-terminal.terminal"

/usr/libexec/PlistBuddy -x -c "Delete :Window\ Settings:my-terminal" "$TERM_CFG" 2>/dev/null
/usr/libexec/PlistBuddy -x -c "Add :Window\ Settings:my-terminal dict" "$TERM_CFG"
/usr/libexec/PlistBuddy -x -c "Merge '$THEME' :Window\ Settings:my-terminal" "$TERM_CFG"

/usr/libexec/PlistBuddy -x -c "Delete :Default\ Window\ Settings" "$TERM_CFG" 2>/dev/null
/usr/libexec/PlistBuddy -x -c "Add :Default\ Window\ Settings string 'my-terminal'" "$TERM_CFG"
/usr/libexec/PlistBuddy -x -c "Delete :Startup\ Window\ Settings" "$TERM_CFG" 2>/dev/null
/usr/libexec/PlistBuddy -x -c "Add :Startup\ Window\ Settings string 'my-terminal'" "$TERM_CFG"

echo "Done!"
