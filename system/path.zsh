# homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# dotfiles bin
export PATH="$ZSH/bin:$ZSH/git/bin:$PATH"

# depot tools
export PATH="$PATH:$PROJECT_HOME/depot_tools"

# MacTeX
export PATH="$PATH:/Library/TeX/Distributions/Programs/texbin"

# local npm
export PATH="./node_modules/.bin:$PATH"

# local bin priority
export PATH="./bin:$PATH"

# manpages
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
