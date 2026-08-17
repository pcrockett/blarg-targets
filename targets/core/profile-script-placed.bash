#!/usr/bin/env blarg

REPO_PATH="${BLARG_MODULE_DIR}/config/environment/profile"
SYSTEM_PATH=~/.profile

satisfied_if() {
  files_are_same "${REPO_PATH}" "${SYSTEM_PATH}"
}

apply() {
  install --mode u=rw,g=,o= "${REPO_PATH}" "${SYSTEM_PATH}"
}
