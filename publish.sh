#!/bin/zsh
# Exit when commands fail.
set -e
# Delete the reader if it's sitting around.
if [ -d "bookish-reader" ]
then
    rm -rf bookish-reader
fi
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

rm -rf bookish-reader