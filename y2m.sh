#!/bin/bash -ex

AVCONV_CMD="avconv -i %f -ab 192k -acodec mp3 mp3/%n.mp3"
REMOVE_SRC_CMD="rm %f"

URL=$(zenity --title "Youtube URL to download" --entry --text "Youtube URL eingeben")

cclive --tr "/(\w)/g"  --exec "$AVCONV_CMD" --exec "$REMOVE_SRC_CMD" $URL
