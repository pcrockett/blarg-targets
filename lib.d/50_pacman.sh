# shellcheck shell=bash

pacman:is_installed() {
  command -v pacman &>/dev/null
}

pacman:install() {
  as_root pacman -Syu --needed --noconfirm "${@}"
}

pacman:remove() {
  as_root pacman -R --noconfirm "${@}"
}

pacman:package_is_installed() {
  pacman --query "${@}" &>/dev/null
}
