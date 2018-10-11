# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"
alias reload!="reload"
alias r!="reload"

# forget sensitive info
forget() { sed -i -e "s/$1/whyareyoucheckingmyhistory/g" "$HOME/.zsh_history" }
