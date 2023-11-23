mkdir 450

for image in *.[jJ][pP][gG]; do
  height=$(identify -format "%h" "$image")

  if [ "$height" -gt 450 ]; then
    convert "$image" -resize x450 "./450/$image"
    jpegoptim -q --max=60 "./450/$image"
  else
    cp "$image" "./450/$image"
  fi
done
