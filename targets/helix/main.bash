#!/usr/bin/env blarg

targets=(
  archlinux/helix-installed  # TODO: add support for other distros
  hx-symlink-created
  helix-configured
)

depends_on "${targets[@]}"
