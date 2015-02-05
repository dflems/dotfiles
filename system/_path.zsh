# npm packages
export PATH="/usr/local/share/npm/bin:$PATH"
export NODE_PATH="/usr/local/lib/node"

# homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# coreutils
cu=$(brew --prefix coreutils 2>/dev/null)
if [[ ! -z "$cu" ]]; then
  export PATH="$cu/libexec/gnubin:$PATH"
fi

# dotfiles bin
export PATH="$ZSH/bin:$ZSH/git/bin:$PATH"

# local bin priority
export PATH="./bin:$PATH"

# manpages
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
