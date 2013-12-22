#!/bin/sh

MP3_DIR="$HOME/Musik"

AVCONV_CMD="avconv -i %f -ab 192k -acodec mp3 mp3/%n.mp3"
REMOVE_SRC_CMD="rm %f"

URL=$(zenity --title "Youtube URL to download" --entry --text "Youtube URL eingeben")

cclive --tr "/(\w)/g"  --exec "$AVCONV_CMD" --exec "$REMOVE_SRC_CMD" $URL 2>&1 | zenity --progress --text "Download and conversion in progress" --auto-close --pulsate
