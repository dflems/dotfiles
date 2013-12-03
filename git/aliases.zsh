# Use `hub` as our git wrapper: http://defunkt.github.com/hub/
if (( $+commands[hub] )) then
  alias git=hub
fi
