#!/bin/sh
# Initial setup for Sublime Text

echo "Setting up Sublime Text..."

PID=`ps x | grep "Sublime Text.app" | grep -v "grep" | awk '{print $1}'`
if [ ! -z "$PID" ]; then
	echo "! Please close Sublime Text 3 before running this script."
	exit 1
fi

# Check for install
SUBL_PACKAGE_DIR=~/Library/Application\ Support/Sublime\ Text\ 3/Packages
if [ ! -d "$SUBL_PACKAGE_DIR" ]; then
	echo "! Sublime Text 3 is not installed."
	exit 2
fi

# Symlink
if [ ! -L "$SUBL_PACKAGE_DIR/User" ]; then
	SUBL_USER_BACKUP="$SUBL_PACKAGE_DIR/User_$(date +%s).backup"
	mv "$SUBL_PACKAGE_DIR/User" "$SUBL_USER_BACKUP"
	echo "* Current user prefs backed up to $SUBL_USER_BACKUP"
fi

echo "* Symlinking \"$ZSH/sublime/User\" to \"$SUBL_PACKAGE_DIR/User\""
rm -rf "$SUBL_PACKAGE_DIR/User"
ln -s "$ZSH/sublime/User" "$SUBL_PACKAGE_DIR"

# Install the Soda theme
echo "* Installing \"Soda\" theme"
cd "$SUBL_PACKAGE_DIR"
rm -rf "Theme - Soda"
git clone --quiet https://github.com/buymeasoda/soda-theme/ "Theme - Soda"

# Install tomorrow color theme
echo "* Installing \"Tomorrow Night\" color theme"
rm -rf "Tomorrow"
mkdir "Tomorrow"
curl --silent --output Tomorrow/Tomorrow-Night.tmTheme https://raw.github.com/chriskempson/tomorrow-theme/master/textmate/Tomorrow-Night.tmTheme

# Install Spacegray
echo "* Installing Spacegray"
cd "$SUBL_PACKAGE_DIR"
rm -rf "Theme - Spacegray"
git clone --quiet https://github.com/kkga/spacegray "Theme - Spacegray"