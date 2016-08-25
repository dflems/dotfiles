#!/bin/sh
set -e

if [ ! -d "$HOME/.nvm" ]; then
  echo "checking out nvm..."
  git clone https://github.com/creationix/nvm.git "$HOME/.nvm"
else
  echo "updating nvm..."
fi

cd "$HOME/.nvm"
git fetch --tags
LATEST=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout "$LATEST"
