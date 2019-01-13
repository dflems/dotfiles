if [[ "$EDITOR" == "" ]] ; then
  # Use `subl` as the editor if it's on the path
  if type subl >/dev/null 2>&1; then
    export EDITOR='subl'
  else
    export EDITOR='vi'
  fi
fi

# Java Home
JENV="$HOME/.jenv"
if [ -d "$JENV" ]; then
  export PATH="$JENV/bin:$PATH"
  eval "$(jenv init -)"
elif [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

# OPAM for that FB ocaml stuff
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
