# Use `hub` as our git wrapper: http://defunkt.github.com/hub/
if (( $+commands[hub] )) then
  alias git=hub
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"