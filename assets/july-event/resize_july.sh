mkdir 750
for image in *.[jJ][pP][gG]; do
  convert $image -resize 750x750\> ./750/$image
  jpegoptim -q --max=60 ./750/$image
done
