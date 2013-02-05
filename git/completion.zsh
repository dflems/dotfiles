# Using the ZSH-default git completion instead of /usr/local/share/zsh/site-functions/_git
# Git's built-in completion script gets all the aliases properly, but isn't verbose.

# Because we aliased git -> hub
if (( $+commands[hub] )) then
  compdef hub=git
  . /usr/local/share/zsh/site-functions/_hub
fi
