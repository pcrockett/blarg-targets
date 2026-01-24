#!/usr/bin/env blarg

targets=(
  installed
  hx-symlink-created
  helix-configured
)

depends_on "${targets[@]}"
