#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    count="$(wc -w "${f}" | awk '{print $1;}')"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word count: $count"
  fi
done

