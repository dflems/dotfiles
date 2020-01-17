export VIRTUAL_ENV_DISABLE_PROMPT=1

venv2 () {
  # requires virtualenv to be installed w/ pip
  local dir="${1:-.venv2}"
  if [[ ! -d "$dir" ]]; then
    >&2 echo "creating py2 virtualenv @ $dir"
    virtualenv "$dir"
  fi
  source "$dir/bin/activate"
}

venv3 () {
  local dir="${1:-.venv3}"
  if [[ ! -d "$dir" ]]; then
    >&2 echo "creating py3 virtualenv @ $dir"
    python3 -m venv "$dir"
  fi
  source "$dir/bin/activate"
}

if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:$PATH"
  eval "$(pyenv init -)"
fi
