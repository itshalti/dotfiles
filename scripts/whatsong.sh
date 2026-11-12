#!/usr/bin/env bash
#
# ~/.config/scripts/whatsong-spotify.sh

if ! pgrep -x spotify > /dev/null; then
  echo "Spotify is not running"
  exit 1
fi

song=$(playerctl --player=spotify metadata --format '{{artist}} - {{title}}' 2>/dev/null)

if [[ -z $song ]]; then
  echo "No song playing"
  exit 1
fi

echo "$song"

