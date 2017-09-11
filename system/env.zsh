if [[ "$EDITOR" == "" ]] ; then
  # Use `subl` as the editor if it's on the path
 if type subl >/dev/null 2>&1; then
    export EDITOR='subl'
  else
    export EDITOR='vi'
  fi
fi

# Java Home
if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

BREW_PYTHON="$(brew --prefix)/bin/python2"
if [ -f "$BREW_PYTHON" ]; then
  alias python="$BREW_PYTHON"

  # Python w/ virtualenv wrapper
  if [ -f $(brew --prefix)/bin/virtualenvwrapper_lazy.sh ]; then
    export VIRTUALENVWRAPPER_PYTHON="$BREW_PYTHON"
    export VIRTUAL_ENV_DISABLE_PROMPT=1
    export WORKON_HOME=$HOME/.virtualenvs
    . $(brew --prefix)/bin/virtualenvwrapper_lazy.sh

    venv () {
      virtualenvwrapper_load
      NAME="$1"
      if [ -z "$NAME" ]; then
        NAME=`basename "$PWD"`
      fi
      if [ -d "$WORKON_HOME/$NAME" ]; then
        workon "$NAME"
      else
        mkvirtualenv "$NAME"
      fi
    }
  fi
fi
