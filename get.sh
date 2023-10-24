#!/usr/bin/sh

. .env

path="${1}"
queries="${2}"
apikey="key=${APIKEY}"

curl -sL "https://youtube.googleapis.com/youtube/v3/${path}?${apikey}&${queries}"
