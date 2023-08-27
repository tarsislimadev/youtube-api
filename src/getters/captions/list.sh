#!/usr/bin/sh

# inputs

. .env

METHOD="captions"

VIDEO_ID="${1}"

# runner

RESP=$( bash curl.sh "${METHOD}" "videoId=${VIDEO_ID}" )

# outputs

bash create.sh "${METHOD}" "${VIDEO_ID}" "json" "${RESP}"
