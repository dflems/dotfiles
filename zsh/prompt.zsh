# output git branch
git_branch() {
  # bail out if we don't have a branch name
  [[ "$vcs_info_msg_0_" == "" ]] && return
  # dirty check (bail if command fails)
  command test -n "$(git status --porcelain 2>/dev/null | tail -n 1)" &>/dev/null
  (($? == 0)) && git_dirty="*"
  # output colored branch name
  [[ "$git_dirty" == "" ]] && git_color=green || git_color=red
  echo "%F{$git_color}${vcs_info_msg_0_}${git_dirty}%f"
}

# prints up arrow if unpushed commits. down arrow if unpulled.
git_arrows() {
  command git rev-parse --abbrev-ref @'{u}' &>/dev/null || return
  local arrows=""
  (( $(command git rev-list --right-only --count HEAD...@'{u}' 2>/dev/null) > 0 )) && arrows='⇣'
  (( $(command git rev-list --left-only --count HEAD...@'{u}' 2>/dev/null) > 0 )) && arrows+='⇡'
  [[ "$arrows" != "" ]] && echo " ${arrows}"
}

# render the prompt
render_prompt() {
  # prompt begins with path
  local prompt="%F{blue}%~%f"
  # git branch and status
  prompt+="$(git_branch)"
  # git pull/push arrows
  prompt+="%F{magenta}$(git_arrows)%f"
  # yellow cursor. red if last command failed
  prompt+="\n%(?.%F{yellow}.%F{red})❯%f "
  # echo
  echo "$prompt"
}

# set up the prompt
prompt_setup() {
  autoload -Uz vcs_info
  zstyle ':vcs_info:*' enable git
  zstyle ':vcs_info:*' use-simple true
  zstyle ':vcs_info:git*' formats ' %b'
  zstyle ':vcs_info:git*' actionformats ' %b|%a'
  export PROMPT=$'\n$(render_prompt)'
}

# run before each command
precmd() {
  # update title to hostname
  title "zsh" "%m" "%55<...<%~"
  # update VCS info
  vcs_info
}

prompt_setup
