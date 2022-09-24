#!/bin/sh
rm Packages*
dpkg-scanpackages -m ./debs > Packages
bzip2 -fks Packages
