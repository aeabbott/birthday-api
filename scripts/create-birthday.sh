#!/bin/bash

#ID = 1 TOKEN=BAhJIiU4N2U4ZjNiMDhkODE1NDk4YTA4ZjYxMjBjZTBmZWZmOAY6BkVG--2146f3b5ca1bac672cc5c3f77459f4433567ee5f
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
