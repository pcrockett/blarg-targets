#!/usr/bin/env blarg

UNIT="docker.service"

depends_on installed enabled

satisfied_if() {
  test "$(systemctl is-active "${UNIT}")" == "active"
}

apply() {
  as_root systemctl start "${UNIT}"
}
