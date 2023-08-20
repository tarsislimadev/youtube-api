#!/usr/bin/sh

. .env

path="${1}"
queries="${2}"
apikey="apikey=${APIKEY}"

curl -sL "http://api.musixmatch.com/ws/1.1/${path}?${apikey}&${queries}"
