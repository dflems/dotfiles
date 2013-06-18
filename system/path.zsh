# rbenv shims
export PATH="$HOME/.rbenv/shims:$PATH"

# pip-installed executables
export PATH="/usr/local/share/python:$PATH"

# npm packages
export PATH="/usr/local/share/npm/bin:$PATH"
export NODE_PATH="/usr/local/lib/node"

# homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# dotfiles bin
export PATH="$ZSH/bin:$ZSH/git/bin:$PATH"

# local bin priority
export PATH="./bin:$PATH"

# manpages
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
