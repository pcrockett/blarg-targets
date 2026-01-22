#!/usr/bin/env blarg

SOURCE_FILE="${BLARG_MODULE_DIR}/config/iptables/rules.v4"
DEST_FILE="/etc/iptables/iptables.rules"

satisfied_if() {
  files_are_same "${SOURCE_FILE}" "${DEST_FILE}"
}

apply() {
  as_root cp "${SOURCE_FILE}" "${DEST_FILE}"
  if [ "$(systemctl is-enabled iptables.service)" = "enabled" ]; then
    as_root systemctl reload iptables.service
  fi
}
