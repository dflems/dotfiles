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

# cargo
if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$PATH:$HOME/.cargo/bin"
fi

# gcloud
if [ -d "/opt/google-cloud-sdk" ]; then
  export PATH="$PATH:/opt/google-cloud-sdk/bin"
elif [ -d "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin" ]; then
  export PATH="$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin"
fi
