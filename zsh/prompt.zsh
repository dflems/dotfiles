git_prompt_info() {
  # get shortcode (bail if not found)
  local shortcode=$(git rev-parse --short HEAD 2>/dev/null)
  [[ "$shortcode" == "" ]] && return

  # get and test branch name
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

  # render unpushed / unpulled arrows
  if [[ "$branch" != "" ]]; then
    local arrows=""
    (( $(command git rev-list --right-only --count HEAD...@'{u}' 2>/dev/null) > 0 )) && arrows='⇣'
    (( $(command git rev-list --left-only --count HEAD...@'{u}' 2>/dev/null) > 0 )) && arrows+='⇡'
    [[ "$arrows" != "" ]] && arrows=" ${arrows}"
  else
    branch="@$shortcode"
  fi

  # dirty check + associated color
  command test -n "$(git status --porcelain 2>/dev/null | tail -n 1)" &>/dev/null
  (($? == 0)) && git_color=red || git_color=green

  # output git info
  echo " %F{$git_color}${branch}%f%F{magenta}${arrows}%f"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
}

# path + git info + cursor (red if last command failed, otherwise yellow)
export PROMPT=$'\n%F{blue}%~%f$(git_prompt_info)\n%(?.%F{yellow}.%F{red})❯%f '
