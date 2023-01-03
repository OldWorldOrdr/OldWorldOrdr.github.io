#!/bin/sh
cd "${0%/*}" || exit 1
rm Packages*
dpkg-scanpackages -m ./debs > Packages
bzip2 -fks Packages
