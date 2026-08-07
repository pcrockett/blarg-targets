#!/usr/bin/env blarg

satisfied_if() {
  command -v mise &>/dev/null
}

apply() {
  if pacman:is_installed; then
    satisfy archlinux/mise-installed
  elif apt_get:is_installed; then
    satisfy debian/mise-installed
  else
    panic "Only pacman or apt-get are supported right now."
  fi
}
