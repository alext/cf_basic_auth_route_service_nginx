#!/bin/sh

echo "In start.sh"

if [ -z "${AUTH_USERNAME}" ]; then
  echo "Error AUTH_USERNAME not set."
  exit 1
fi

if [ -z "${AUTH_PASSWORD}" ]; then
  echo "Error AUTH_PASSWORD not set."
  exit 1
fi

AUTH_FILE="./nginx/conf/.htpasswd"
echo "${AUTH_USERNAME}:$(openssl passwd -apr1 "${AUTH_PASSWORD}")" > "${AUTH_FILE}"

exec ./boot.sh
