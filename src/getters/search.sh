#!/usr/bin/sh

# inputs

. .env

METHOD="search"

Q="${1}"

# runner

RESP=$( bash curl.sh "${METHOD}" "q=${Q}" )

# outputs

bash create.sh "${METHOD}" "${Q}" "json" "${RESP}"
