#!/usr/bin/env blarg
# shellcheck disable=SC2034  # variables appear unused, but are used inside snippet

PACKAGES=(
  ca-certificates
  curl
  git
  tar
  xz-utils
)

snippet "debian-packages-installed"
