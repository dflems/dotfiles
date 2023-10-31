# run pre-commit hooks from the current git repo
function pc() {
  (
    cd "$(git rev-parse --show-toplevel)"
    .git/hooks/pre-commit
  )
}
