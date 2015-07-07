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

# Python w/ virtualenv wrapper
export VIRTUALENVWRAPPER_PYTHON=$(brew --prefix)/bin/python
if [ -f $(brew --prefix)/bin/virtualenvwrapper_lazy.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  . $(brew --prefix)/bin/virtualenvwrapper_lazy.sh
fi
