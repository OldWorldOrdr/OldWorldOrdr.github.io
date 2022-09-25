COMP=gzip
for i in *.deb; do
    echo "$i"
    mkdir "$i.extract"
    dpkg-deb -R "$i" "$i.extract"
    rm "$i"
    dpkg-deb -b --root-owner-group "-Z$COMP" "$i.extract" "$i"
    rm -rf "$i.extract"
done
