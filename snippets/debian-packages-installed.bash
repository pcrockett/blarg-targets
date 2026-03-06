# define the following before rendering this snippet:
#
# * PACKAGES: bash array of package names
#

satisfied_if() {
  apt_get:package_is_installed "${PACKAGES[@]}"
}

apply() {
  satisfy debian/apt-updated
  apt_get:install "${PACKAGES[@]}"
}
