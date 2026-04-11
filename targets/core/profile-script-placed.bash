#!/usr/bin/env blarg

REPO_PATH="${BLARG_MODULE_DIR}/config/environment/profile"
SYSTEM_PATH=~/.profile

satisfied_if() {
  test_symlink "${REPO_PATH}" "${SYSTEM_PATH}"
}

apply() {
  ln --force --symbolic "${REPO_PATH}" "${SYSTEM_PATH}"
  echo ".profile configured! Log out and back in to continue."
  exit 1
}
