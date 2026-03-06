#!/usr/bin/env blarg

depends_on debian/core-deps-installed

satisfied_if() {
  command -v hx
}

apply() {
  curl -SsfL https://philcrockett.com/yolo/v1.sh \
    | bash -s -- helix
}
