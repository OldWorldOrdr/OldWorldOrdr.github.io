#!/bin/sh
cd "${0%/*}" || exit 1
rm ./armv6/Packages*
rm ./armv7/Packages*
rm ./arm64/Packages*
dpkg-scanpackages -m ./armv6/debs > ./armv6/Packages
dpkg-scanpackages -m ./armv7/debs > ./armv7/Packages
dpkg-scanpackages -m ./arm64/debs > ./arm64/Packages
bzip2 -fks ./armv6/Packages
bzip2 -fks ./armv7/Packages
bzip2 -fks ./arm64/Packages
