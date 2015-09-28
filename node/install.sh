#!/bin/sh
set -e

if [ ! -d "$HOME/.nvm" ]; then
  echo "checking out nvm..."
  git clone https://github.com/creationix/nvm.git "$HOME/.nvm"
else
  echo "updating nvm..."
fi
cd "$HOME/.nvm"
git fetch
git checkout `git describe --abbrev=0 --tags`
