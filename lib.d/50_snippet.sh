# shellcheck shell=bash

snippet() {
  local snippet_name="${1:?must specify snippet name}"
  local snippet_path="${BLARG_MODULE_DIR}/snippets/${snippet_name}.bash"
  test -f "${snippet_path}" || panic "Snippet file doesn't exist: ${snippet_path}"

  # shellcheck source=/dev/null
  source "${snippet_path}"
}
