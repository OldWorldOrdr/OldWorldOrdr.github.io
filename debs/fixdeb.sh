#!/bin/sh
case $1 in
  *.deb)
    printf  "Unpacking %s\n" "$1"
    dpkg-deb -R "$1" "$1.extract"
    rm "$1"
    dpkg-deb -b --root-owner-group -Zgzip "$1.extract" "$1"
    rm -rf "$1.extract"
    exit 0
  ;;
esac

printf "Usage: %s <file.deb>\n" "$0"
