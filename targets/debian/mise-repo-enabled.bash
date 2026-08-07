#!/usr/bin/env blarg

depends_on extrepo-installed

SOURCES_FILE="/etc/apt/sources.list.d/extrepo_mise.sources"

satisfied_if() {
  test -f "${SOURCES_FILE}" && is_deb_source_enabled
}

apply() {
  as_root extrepo enable mise
  apt_get:run update
}

is_deb_source_enabled() {
  test "$(awk '$1 == "Enabled:" { print $2 }' "${SOURCES_FILE}")" != "no"
}
