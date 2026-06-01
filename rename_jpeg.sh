#!/bin/bash
for f in *.jpeg; do
    mv -- "$f" "${f%.jpeg}.jpg"
    echo "Renamed: $f -> ${f%.jpeg}.jpg"
done
for f in *.JPEG; do
    mv -- "$f" "${f%.JPEG}.jpg"
    echo "Renamed: $f -> ${f%.JPEG}.jpg"
done
for f in *.JPG; do
    mv -- "$f" "${f%.JPG}.jpg"
    echo "Renamed: $f -> ${f%.JPG}.jpg"
done
