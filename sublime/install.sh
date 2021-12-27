#!/bin/sh
# Initial setup for Sublime Text

echo "Setting up Sublime Text..."

PID=`ps x | grep "Sublime Text.app" | grep -v "grep" | awk '{print $1}'`
if [ ! -z "$PID" ]; then
  echo "! Please close Sublime Text before running this script."
  exit 1
fi

# Check for install
PACKAGE_DIR=~/Library/Application\ Support/Sublime\ Text\ 3/Packages
mkdir -p "$PACKAGE_DIR"

# Symlink Package Dir
if [ ! -L "$PACKAGE_DIR/User" ]; then
  USER_BACKUP="$PACKAGE_DIR/User_$(date +%s).backup"
  mv "$PACKAGE_DIR/User" "$USER_BACKUP"
  echo "* Current user prefs backed up to $USER_BACKUP"
fi

echo "* Symlinking \"$ZSH/sublime/User\" to \"$PACKAGE_DIR/User\""
rm -rf "$PACKAGE_DIR/User"
ln -s "$ZSH/sublime/User" "$PACKAGE_DIR"
cd "$PACKAGE_DIR"
