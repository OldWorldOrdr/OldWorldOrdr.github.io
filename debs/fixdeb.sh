#!/bin/sh
case $1 in
    *.deb)
        echo "$1"
        dpkg-deb -R "$1" "$1.extract"
        rm "$1"
        dpkg-deb -b --root-owner-group -Zgzip "$1.extract" "$1"
        rm -rf "$1.extract"
        exit 0
    ;;
esac

for i in *.deb; do
    echo "$i"
    dpkg-deb -R "$i" "$i.extract"
    rm "$i"
    dpkg-deb -b --root-owner-group -Zgzip "$i.extract" "$i"
    rm -rf "$i.extract"
done
