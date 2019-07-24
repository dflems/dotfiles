# Set editor if unspecified
if [[ "$EDITOR" == "" ]] ; then
  # Use `subl` as the editor if it's on the path
 if type subl >/dev/null 2>&1; then
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
