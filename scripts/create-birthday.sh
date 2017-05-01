#!/bin/bash

#ID = 1 TOKEN=BAhJIiU1YjUwOWMxYjIwOWRlNDM0NTkzZjBhMmE1ZDkzZmI1MgY6BkVG--5fb97fd81c8bceba2fa22a9eb56ab5e6feef9c67
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/birthdays"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "birthday": {
      "born_on":"1990-02-15",
      "family_name":"last name",
      "given_name":"first name",
      "nickname":"nickname"
    }
  }'

echo

BAhJIiU1YjUwOWMxYjIwOWRlNDM0NTkzZjBhMmE1ZDkzZmI1MgY6BkVG--5fb97fd81c8bceba2fa22a9eb56ab5e6feef9c67
