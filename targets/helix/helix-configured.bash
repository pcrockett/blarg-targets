#!/usr/bin/env blarg

LOCAL_CONFIG="${BLARG_MODULE_DIR}/config/helix"
HELIX_CONFIG="${XDG_CONFIG_HOME}/helix"

satisfied_if() {
  files_are_same "${LOCAL_CONFIG}/config.toml" "${HELIX_CONFIG}/config.toml"
}

apply() {
  rm -rf "${HELIX_CONFIG}"
  mkdir -p "${XDG_CONFIG_HOME}"
  cp -r "${LOCAL_CONFIG}" "${HELIX_CONFIG}"
}
