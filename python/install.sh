#!/bin/bash

if [ -d "$HOME/.pyenv" ]; then
  echo "Updating pyenv"
  sh -c 'cd "$HOME/.pyenv" && git pull'
else
  echo "Cloning pyenv"
  git clone https://github.com/pyenv/pyenv.git "$HOME/.pyenv"
fi
