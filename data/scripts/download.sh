#!/bin/bash

DIR=$(dirname $0)
ZIP="$DST_DIR/zip"


test -d "$ZIP" || mkdir -p "$ZIP"
wget -i "$DIR/list-zip.txt" -P "$ZIP/"
