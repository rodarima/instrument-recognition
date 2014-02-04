#!/bin/bash

DIR=$(dirname "$0")
cd "$DIR"
DIR=$(pwd)
ZIP="$DIR/zip"
MP3="$DIR/mp3"

test -d "$MP3" || mkdir -p "$MP3"
echo "Buscando comprimidos en $ZIP y extrayendo en ${MP3}..."
cd "$ZIP"
unzip "*.zip" -d "$MP3"
