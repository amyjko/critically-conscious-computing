#!/bin/zsh
# Exit when commands fail.
set -e
# Delete the reader if it's sitting around.
if [ -d "bookish-reader" ]
then
    rm -rf bookish-reader
fi
# Remove the clone however this script exits. set -e means a failed bind or a
# failed deploy would otherwise skip the cleanup at the end and strand a copy
# here -- and they are well over a gigabyte each.
BOOK=$PWD
trap 'rm -rf "$BOOK/bookish-reader"' EXIT
# Clone the reader.
git clone https://github.com/amyjko/bookish-reader
cd bookish-reader
# Bind all editions in editions.json, moving the merged build here.
zsh bind.sh ../editions.json

if [ "$1" = "preview" ]
then
    # Serve the merged build exactly as Firebase will (all editions, rewrites).
    firebase emulators:start --only hosting
else
    firebase deploy
fi
