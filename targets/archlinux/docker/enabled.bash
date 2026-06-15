#!/usr/bin/env blarg

UNIT="docker.service"

depends_on installed

satisfied_if() {
  test "$(systemctl is-enabled "${UNIT}")" == "enabled"
}

apply() {
  as_root systemctl enable "${UNIT}"
}
