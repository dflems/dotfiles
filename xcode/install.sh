#!/bin/sh

LIB_SNIPPETS="$(readlink -f ~)/Library/Developer/Xcode/UserData/CodeSnippets"
DOT_SNIPPETS="$(readlink -f $(dirname "$0")/snippets)"

if [ -L "$LIB_SNIPPETS" ]; then
  # if already a symlink, just remove it
  rm "$LIB_SNIPPETS"
elif [ -d "$LIB_SNIPPETS" ]; then
  # if it's a hard directory, back it up
  mv "$LIB_SNIPPETS" "$LIB_SNIPPETS-bak-$(date +%s)"
fi

mkdir -p "$(dirname "$LIB_SNIPPETS")"

ln -s "$DOT_SNIPPETS" "$LIB_SNIPPETS"
