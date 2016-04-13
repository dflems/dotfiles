alias reload!='. ~/.zshrc'
alias r!='. ~/.zshrc'

# forget sensitive info
forget() { sed -i -e "s/$1/whyareyoucheckingmyhistory/g" "$HOME/.zsh_history" }
