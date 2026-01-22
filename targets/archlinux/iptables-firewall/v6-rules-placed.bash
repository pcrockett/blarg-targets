#!/usr/bin/env blarg

SOURCE_FILE="${BLARG_MODULE_DIR}/config/iptables/rules.v6"
DEST_FILE="/etc/iptables/ip6tables.rules"

satisfied_if() {
  files_are_same "${SOURCE_FILE}" "${DEST_FILE}"
}

apply() {
  as_root cp "${SOURCE_FILE}" "${DEST_FILE}"
  if [ "$(systemctl is-enabled ip6tables.service)" = "enabled" ]; then
    as_root systemctl reload ip6tables.service
  fi
}
