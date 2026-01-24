#!/usr/bin/env blarg

depends_on installed core/local-bin-dir-created

satisfied_if() {
  command -v hx
}

apply() {
  ln --symbolic "$(command -v helix)" ~/.local/bin/hx
}
