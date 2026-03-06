#!/usr/bin/env blarg

satisfied_if() {
  command -v hx
}

apply() {
  if pacman:is_installed; then
    satisfy archlinux/helix-installed
  elif apt_get:is_installed; then
    satisfy debian/helix-installed
  else
    panic "Only pacman or apt-get are supported right now."
  fi
}
