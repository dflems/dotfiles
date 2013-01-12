autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

git_branch() {
  echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$(/usr/bin/git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st == "nothing to commit (working directory clean)" ]]
    then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  /usr/bin/git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

rb_version(){
  if (( $+commands[rbenv] ))
  then
    echo "$(rbenv version | awk '{print $1}')"
  else
    echo "system"
  fi
}

directory_name(){
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

set_rprompt () {
  #export RPROMPT="%{$fg_bold[grey]%}$(whoami)@$(hostname)%{$reset_color%}"
}

set_prompt () {
  export PROMPT=$'\n%{$fg_bold[magenta]%}%n%{$reset_color%} at %{$fg_bold[yellow]%}%m%{$reset_color%} in $(directory_name) $(git_dirty)$(need_push)\n› '
  export RPROMPT="%{$fg_bold[grey]%}$(rb_version)%{$reset_color%}"
}

precmd () {
  title "zsh" "%m" "%55<...<%~"
  #set_rprompt
}

set_prompt
