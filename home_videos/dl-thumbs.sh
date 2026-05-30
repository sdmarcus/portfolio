#!/usr/bin/env bash

while IFS= read -r link; do
  # Skip blank lines
  [[ -z "$link" ]] && continue

  yt-dlp --skip-download --write-thumbnail --convert-thumbnails jpg "$link"
done <links.txt
