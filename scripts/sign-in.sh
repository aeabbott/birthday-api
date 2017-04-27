#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "amandabanana@yahoo.com",
      "password": "pass",
      "password_confirmation": "pass"
    }
  }'

echo


curl --include --request POST http://localhost:4741/sign-up \
--header "Content-Type: application/json" \
--data '{
  "credentials": {
    "email": "green555",
    "password": "test",
    "password_confirmation": "test"
  }
}'

curl --include --request POST https://pacific-brushlands-38706.herokuapp.com/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "green555",
      "password": "test",
      "password_confirmation": "test"
    }
  }'
