#!/bin/bash

DIR="$DST_DIR"
SRC="$DIR/mp3"
DST="$DIR/wav"

echo "Buscando archivos mp3 en $SRC"

find "$SRC" -name "*.mp3" | while read MP3; do
	TITULO=$(basename "$MP3" ".mp3")
	LUGARSRC=$(dirname "$MP3")
	LUGARDST=$(dirname "$MP3" | sed -e "s,$SRC,$DST,g")
	WAV="$LUGARDST/${TITULO}.wav"

	test -d "$LUGARDST" || mkdir -p "$LUGARDST"

	echo "Convirtiendo $MP3 a $WAV"
	
	test -f "$WAV" || lame --quiet --decode $MP3 $WAV


done

