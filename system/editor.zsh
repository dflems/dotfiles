# Set editor if unspecified
if [[ "$EDITOR" == "" ]] ; then
  # Use `subl` as the editor if it's on the path
 if type subl >/dev/null 2>&1; then
    export EDITOR='subl'
  else
    export EDITOR='vi'
  fi
fi

# Editor function
function e() {
  if [ "$1" = "" ] ; then
    $EDITOR .
  else
    $EDITOR "$1"
  fi
}

# Shortcut to edit dotfiles
alias edot="e \"$ZSH\""
