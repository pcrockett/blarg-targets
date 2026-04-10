#!/usr/bin/env blarg

GROUP_TO_ADD="docker"

depends_on installed

satisfied_if() {
  groups | grep --word-regexp "${GROUP_TO_ADD}"
}

apply() {
  as_root usermod --append --groups "${GROUP_TO_ADD}" "${USER}"
  if [ "$(systemctl is-active docker.service)" == "active" ]; then
    as_root systemctl restart docker.service
  fi
  echo "\`${USER}\` added to \`${GROUP_TO_ADD}\` group. Log out and in for settings to take effect."
}
