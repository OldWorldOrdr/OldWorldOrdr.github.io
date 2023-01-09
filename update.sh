#!/bin/sh
cd "${0%/*}" || exit 1
(
cd armv6 || exit 1
dpkg-scanpackages -m ./debs > Packages
bzip2 -fk Packages
)
(
cd armv7 || exit 1
dpkg-scanpackages -m ./debs > Packages
bzip2 -fk Packages
)
(
cd arm64 || exit 1
dpkg-scanpackages -m ./debs > Packages
bzip2 -fk Packages
)
