local MY_PYTHON="$(which python)"
if [ "$MY_PYTHON" != "/usr/bin/python" ]; then
  # use virtualenv wrapper
  if [ -f $(brew --prefix)/bin/virtualenvwrapper_lazy.sh ]; then
    export VIRTUAL_ENV_DISABLE_PROMPT=1
    export WORKON_HOME=$HOME/.virtualenvs
    . $(brew --prefix)/bin/virtualenvwrapper_lazy.sh

    # venv will create a named virtualenv or one based on the current dir
    venv () {
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
