mkdir -p preview

for f in ./*.{jpg,jpeg,png,JPG,JPEG,PNG}; do
  [ -e "$f" ] || continue

  filename=$(basename "$f")
  base="${filename%.*}"

  ffmpeg -y -i "$f" \
    -vf "scale='min(1200,iw)':'-1'" \
    -q:v 40 \
    "preview/$base.webp"
done
