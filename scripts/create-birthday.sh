#!/bin/bash

#ID = 1 TOKEN=BAhJIiU0YzZhZWY1MDAzNjE5ODhmMDc1ZjJlNWM0NzFmMGM0YQY6BkVG--103915332f71f846fc4f934121c8d6f4fca51bdb
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
3228c6cb74b3d49a989624dd218f08b5
