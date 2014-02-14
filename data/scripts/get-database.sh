#!/bin/bash

# Sit back and relax

. config

sh download.sh
sh unpack.sh
sh mp3towav.sh
rm -rf "$DST_DIR/mp3"
