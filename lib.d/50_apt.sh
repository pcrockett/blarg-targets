# shellcheck shell=bash

apt_get:is_installed() {
  command -v apt-get &>/dev/null
}

apt_get:install() {
  as_root apt-get install --yes "$@"
}

apt_get:package_is_installed() {
  dpkg --status "$@" &>/dev/null
}
