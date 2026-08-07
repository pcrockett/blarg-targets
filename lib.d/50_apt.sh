# shellcheck shell=bash

apt_get:is_installed() {
  command -v apt-get &>/dev/null
}

# `sudo` resets the environment, so DEBIAN_FRONTEND has to cross the privilege
# boundary via `env` rather than as a prefix assignment on `as_root`. Without it,
# apt falls back through its dialog/readline/teletype frontends and warns on any
# machine without a controlling tty.
apt_get:run() {
  as_root env DEBIAN_FRONTEND=noninteractive apt-get "$@"
}

apt_get:install() {
  apt_get:run install --yes "$@"
}

apt_get:remove() {
  apt_get:run remove --yes "$@"
}

# `dpkg --status` exits 0 for a package that has been removed but not purged --
# its config files remain, so dpkg still has a record of it, even though the
# binaries are gone. Check the status field instead.
apt_get:package_is_installed() {
  local package
  for package in "$@"; do
    dpkg-query --show --showformat '${db:Status-Status}\n' "${package}" 2>/dev/null \
      | grep --quiet --line-regexp 'installed' \
      || return 1
  done
}
