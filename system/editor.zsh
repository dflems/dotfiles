# Set editor if unspecified
if [[ "$EDITOR" == "" ]] ; then
  # Use `subl` as the editor if it's on the path
 if [ -f "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ]; then
    export EDITOR='subp'
  else
    export EDITOR='vi'
  fi
fi

# Editor function
function e() {
  "$EDITOR" "${1:-.}"
}

# Shortcut to edit dotfiles
alias edot="e \"$ZSH\""
alias cdot="cd \"$ZSH\""
