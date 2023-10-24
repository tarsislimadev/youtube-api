#!/usr/bin/sh

. .env

path="${1}"

queries="${2}"

curl -sL -X DELETE "https://youtube.googleapis.com/youtube/v3/${path}?key=${APIKEY}&${queries}" \
  --header "Authorization: Bearer ${ACCESS_TOKEN}" \
  --compressed
