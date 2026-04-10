#!/usr/bin/env blarg

targets=(
  started
  added-to-docker-group
)

depends_on "${targets[@]}"
