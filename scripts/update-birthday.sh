#!/bin/bash

ID = 1
TOKEN=BAhJIiU1YjUwOWMxYjIwOWRlNDM0NTkzZjBhMmE1ZDkzZmI1MgY6BkVG--5fb97fd81c8bceba2fa22a9eb56ab5e6feef9c67
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/birthdays"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "birthday": {
      "born_on":"2000-02-15",
      "family_name":"updated last name",
      "given_name":" udpated first name",
      "nickname":"updated nickname"
    }
  }'

echo



ID=8
TOKEN=BAhJIiU1MTc5MmVjNGQwMjFhMGM3OTM2YTNkZTQ2NjgxNTQxYQY6BkVG--bfb548aafe8587806d6acede33afb0a89d4b8eb2
curl --include --request PATCH http://localhost:4741/birthdays/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"\
  --data '{
    "birthday": {
      "born_on":"2000-02-15",
      "family_name":"updated once more name",
      "given_name":" udpated first name",
      "nickname":"updated nickname"
    }
  }'
