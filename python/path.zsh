export VIRTUAL_ENV_DISABLE_PROMPT=1

venv2 () {
  # requires virtualenv to be installed w/ pip
  [[ -d ".venv2" ]] || virtualenv .venv2
  source ".venv2/bin/activate"
}

venv3 () {
  [[ -d ".venv3" ]] || python3 -m venv .venv3
  source ".venv3/bin/activate"
}
