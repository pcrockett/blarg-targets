#!/usr/bin/env blarg

REPO_PATH="${BLARG_MODULE_DIR}/config/mise"
SYSTEM_PATH=~/.config/mise

satisfied_if() {
  checkpoint_is_current
}

apply() {
  mkdir --parent "$(dirname "${SYSTEM_PATH}")"
  rm -rf "${SYSTEM_PATH}.new"
  cp -r "${REPO_PATH}" "${SYSTEM_PATH}.new"
  if [ -d "${SYSTEM_PATH}" ]; then
    rm -rf "${SYSTEM_PATH}.old"
    mv "${SYSTEM_PATH}" "${SYSTEM_PATH}.old"
  fi
  mv "${SYSTEM_PATH}.new" "${SYSTEM_PATH}"
  checkpoint_success
}
