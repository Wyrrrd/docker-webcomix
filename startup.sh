#!/bin/bash
cd /out
if [ ! -z "$WX_START" ] && [ ! -z "$WX_NEXT" ] && [ ! -z "$WX_IMAGE" ]
then
  if [ ! -z "$WX_CBZ" ]
  then
    echo "Running command: webcomix custom $WX_NAME -y --start-url=\"$WX_START\" --next-page-xpath=\"$WX_NEXT\" --image-xpath=\"$WX_IMAGE\" --cbz"
    webcomix custom $WX_NAME -y --start-url="$WX_START" --next-page-xpath="$WX_NEXT" --image-xpath="$WX_IMAGE" --cbz
  else
    echo "Running command: webcomix custom $WX_NAME -y --start-url=\"$WX_START\" --next-page-xpath=\"$WX_NEXT\" --image-xpath=\"$WX_IMAGE\""
    webcomix custom $WX_NAME -y --start-url="$WX_START" --next-page-xpath="$WX_NEXT" --image-xpath="$WX_IMAGE"
  fi
else
  if [ ! -z "$WX_CBZ" ]
  then
    echo "Running command: webcomix download $WX_NAME --cbz"
    webcomix download $WX_NAME --cbz
  else
    echo "Running command: webcomix download $WX_NAME"
    webcomix download $WX_NAME
  fi
fi
