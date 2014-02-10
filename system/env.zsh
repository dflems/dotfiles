# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  # Use sublime for my editor.
  export EDITOR='subl'
fi

# Java Home
if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

# Python w/ virtualenv wrapper
 export VIRTUALENVWRAPPER_PYTHON=$(brew --prefix)/bin/python
 if [ -f $(brew --prefix)/bin/virtualenvwrapper_lazy.sh ]; then
   . $(brew --prefix)/bin/virtualenvwrapper_lazy.sh
 fi
