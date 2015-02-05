autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  branch_name=$(git_prompt_info)
  state=$($git status --porcelain 2>/dev/null | tail -n 1)

  if [[ ! -z "$branch_name" || ! -z "$state" ]]; then
    if [[ -z "$branch_name" ]]; then branch_name='UNTRACKED'; fi
    if [[ "$state" = "" ]]; then
      echo "on %{$fg_bold[green]%}${branch_name}%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}${branch_name}%{$reset_color%}"
    fi
  else
    echo ''
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

ruby_version() {
  if [ "$(which ruby)" = "/usr/bin/ruby" ]; then 
    echo "system"
  else
    echo `ruby -v | awk '{print $2}'`
  fi
}

directory_name(){
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'\n%{$fg_bold[magenta]%}%n%{$reset_color%} at %{$fg_bold[yellow]%}%m%{$reset_color%} in $(directory_name) $(git_dirty)$(need_push)\n› '
set_prompt () {
  export RPROMPT="%{$fg_bold[grey]%}$(ruby_version)%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
