#!/usr/bin/env blarg
# shellcheck disable=SC2034  # variables appear unused, but are used inside snippet

PACKAGES=(
  mise
)

depends_on mise-repo-enabled

snippet "debian-packages-installed"
