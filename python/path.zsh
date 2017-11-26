BREW_PYTHON_LIBEXEC="$(brew --prefix)/opt/python/libexec/bin"
if [ -d "$BREW_PYTHON_LIBEXEC" ]; then
  export PATH="$BREW_PYTHON_LIBEXEC:$PATH"

  # use virtualenv wrapper
  if [ -f $(brew --prefix)/bin/virtualenvwrapper_lazy.sh ]; then
    export VIRTUALENVWRAPPER_PYTHON="$BREW_PYTHON"
    export VIRTUAL_ENV_DISABLE_PROMPT=1
    export WORKON_HOME=$HOME/.virtualenvs
    . $(brew --prefix)/bin/virtualenvwrapper_lazy.sh

    # venv will create a named virtualenv or one based on the current dir
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
