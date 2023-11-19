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
# Bind the book, moving the build here.
zsh bind.sh

if [ "$1" = "preview" ]
then
    npx vite preview
else
    firebase deploy
fi

rm -rf bookish-reader