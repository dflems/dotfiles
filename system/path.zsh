# homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# dotfiles bin
export PATH="$ZSH/bin:$ZSH/git/bin:$PATH"

# depot tools
if [ -d "$PROJECT_HOME/depot_tools" ]; then
  export PATH="$PATH:$PROJECT_HOME/depot_tools"
fi

# local npm
export PATH="./node_modules/.bin:$PATH"

# local bin priority
export PATH="./bin:$PATH"

# manpages
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

# cargo
if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$PATH:$HOME/.cargo/bin"
fi
